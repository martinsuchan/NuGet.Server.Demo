$nuspec      = "MyRandomGenerator.nuspec"
$solution    = "..\NuGetDemo.sln"
$config      = "Release"
$msbuild     = "C:\Program Files (x86)\MSBuild\12.0\bin\MSBuild.exe"
$pushoptions = "-Source ""http://nugettest42.azurewebsites.net/"" -ApiKey ""fd9907c1-22c1-42c4-b9c6-b485684ea25c"""
set-alias msbuild $msbuild

# clean
Write-Host "`nCleaning solution" -foregroundcolor Green
msbuild $solution /t:Clean /p:Configuration=$config /verbosity:m /nologo

# build
Write-Host "Building solution`n" -foregroundcolor Green
msbuild $solution /t:Build /p:Configuration=$config /verbosity:m /nologo

# create NuGet package
Write-Host "`nPublishing NuGet package" -foregroundcolor Green
.\New-NuGetPackage.ps1 -NuSpecFilePath $nuspec -PushPackageToNuGetGallery -PushOptions $pushoptions

# wait for user input
Write-Host "`nDone!" -foregroundcolor Green
Pause