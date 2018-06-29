[System.Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\selenium\geckodriver-v0.21.0-win64", "Process")

C:\"Program Files\nodejs\npm" install
C:\"Program Files\nodejs\node.exe" selenium-test.js