@echo off
$env:path += "C:\\selenium\\geckodriver-v0.21.0-win64"

cd C#\tests
C:\"Program Files\nodejs\npm" install
C:\"Program Files\nodejs\node.exe" selenium-test.js