param([Parameter(Mandatory=$true)][string]$Owner,[string]$Repo="Cotizaciones-management",[switch]$DryRun)
$ErrorActionPreference="Stop"
$csvPath=Join-Path $PSScriptRoot "..\backlog.csv"
$rows=Import-Csv -Path $csvPath
if(-not (Get-Command gh -ErrorAction SilentlyContinue)){throw "Instala GitHub CLI y ejecuta gh auth login."}
$repoFull="$Owner/$Repo"
Write-Host "Destino: $repoFull | Issues: $($rows.Count) | DryRun: $DryRun"
foreach($row in $rows){
  $title="[$($row.id)] $($row.title)"
  $bodyText=$row.body -replace '\\n',"`n"
  $body="**ID:** $($row.id)`n**Tipo:** $($row.type)`n**Sprint:** $($row.sprint)`n**Prioridad:** $($row.priority)`n**Área:** $($row.area)`n**Estimación:** $($row.estimate_hours) h`n**Repo objetivo:** $($row.target_repo)`n**Dependencias:** $($row.depends_on)`n`n$bodyText`n`n---`nBaseline de Cotizaciones Fase 1; revisar estimación al refinar."
  if($DryRun){Write-Host "[DRY RUN] $title";continue}
  $existing=gh issue list --repo $repoFull --state all --search "in:title $($row.id)" --json title --limit 100 | ConvertFrom-Json
  $prefix="[$($row.id)]";$found=$false
  foreach($e in $existing){if($e.title.StartsWith($prefix)){$found=$true;break}}
  if($found){Write-Host "Omitida (ya existe): $title";continue}
  $tmp=[System.IO.Path]::GetTempFileName()
  try{[System.IO.File]::WriteAllText($tmp,$body,[System.Text.UTF8Encoding]::new($false));gh issue create --repo $repoFull --title $title --body-file $tmp | Write-Host}
  finally{Remove-Item $tmp -Force -ErrorAction SilentlyContinue}
}
Write-Host "Terminado. Añade las Issues al Project y asigna campos."
