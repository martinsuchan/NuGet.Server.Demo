# initialize
Write-Host "`nInitializing NuGet sources" -foregroundcolor Green
nuget sources add -Name "NugetTest 42" -Source "http://nugettest42.azurewebsites.net/nuget" -UserName "nugettest42" -Password "42nugettest"
nuget sources add -Name "NugetTest 42 Publish" -Source "http://nugettest42.azurewebsites.net/" -UserName "nugettest42" -Password "42nugettest"

# wait for user input
Write-Host "`nDone!" -foregroundcolor Green
Pause