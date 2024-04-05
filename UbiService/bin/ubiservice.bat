echo off
echo ----------------------------------------
echo              UbiService.bat
echo ----------------------------------------
echo.
set JAVA_DIR=..\..\env\corretto-1.8
set UBISERVICE_DIR=..\..\UbiService
set PROPERTY_DIR=%UBISERVICE_DIR%
set FONT_DIR=%UBISERVICE_DIR%\fonts\
set XMS=1024M
set XMX=4096M
set CLASSPATH=%UBISERVICE_DIR%\lib\UbiServer.jar

REM For Redbc
REM set CLASSPATH=%UBISERVICE_DIR%\lib\UbiServer.jar;%UBISERVICE_DIR%\lib\EzIssuerJava.jar

REM For Voiceye
REM set CLASSPATH=%UBISERVICE_DIR%\lib\UbiServer.jar;%UBISERVICE_DIR%\lib\VERVMakerJNI.jar
REM set CLASSPATH=%UBISERVICE_DIR%\lib\UbiServer.jar;%UBISERVICE_DIR%\lib\VERVMakerJNI64.jar


echo.
echo [Directory Information]
echo - Java : %JAVA_DIR%
echo - UbiService : %UBISERVICE_DIR%
echo.

echo [Java Information]
%JAVA_DIR%\bin\java -version
echo.

echo [UbiService Start]
%JAVA_DIR%\bin\java -Xms%XMS% -Xmx%XMX% -Dfile.encoding=UTF-8 -Djava.awt.headless=true -Dsun.java2d.fontpath=%FONT_DIR% -classpath %CLASSPATH%;. com.ubireport.service.UbiService4 %PROPERTY_DIR%
