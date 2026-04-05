@echo off
setlocal enabledelayedexpansion
echo Compiling ADU Bus System...

:: Find all .java files and save their paths to sources.txt
if exist sources.txt del sources.txt
for /R src %%f in (*.java) do (
    set "filepath=%%f"
    echo "!filepath:\=/!" >> sources.txt
)

:: Compile all Java files into the bin directory
"C:\Program Files\Java\jdk-25.0.2\bin\javac.exe" -d bin -cp "mysql-connector-j-9.6.0\mysql-connector-j-9.6.0.jar" @sources.txt

:: Check if compilation was successful
if %errorlevel% neq 0 (
    echo Compilation failed! Please check your code for errors.
    pause
    exit /b %errorlevel%
)

echo Compilation successful! Launching the application...

:: Run the Main class
"C:\Program Files\Java\jdk-25.0.2\bin\java.exe" -cp "bin;mysql-connector-j-9.6.0\mysql-connector-j-9.6.0.jar" com.adubus.ui.ADUFrame

pause
