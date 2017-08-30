Param( 
  [string]$sourcePath,
  [string]$outputPath  
)
Get-ChildItem $sourcePath -rec | where {!$_.PSIsContainer} | select-object FullName, Length | export-csv -notypeinformation -path "$outputPath.csv"
