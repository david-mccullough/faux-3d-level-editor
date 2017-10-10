@echo off
setlocal
echo Before proceeding, open this file with notepad and set the DESTDIR path to
echo \GameMakerDirectory\datafiles\levelData.zip then save and re-run
:PROMPT
SET /P AREYOUSURE=Are you sure you want to overwrite current level data(Y/N)?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

@echo on
set ZIPDIR=%LOCALAPPDATA%\_3DTest\LevelData
set DESTDIR=D:\GameDev\faux3d\Repo\Faux3D_Study\3DTest\datafiles\levelData.zip
@echo off

xcopy /l %ZIPDIR%
echo Set objArgs = WScript.Arguments > _zipIt.vbs
echo InputFolder = objArgs(0) >> _zipIt.vbs
echo ZipFile = objArgs(1) >> _zipIt.vbs
echo CreateObject("Scripting.FileSystemObject").CreateTextFile(ZipFile, True).Write "PK" ^& Chr(5) ^& Chr(6) ^& String(18, vbNullChar) >> _zipIt.vbs
echo Set objShell = CreateObject("Shell.Application") >> _zipIt.vbs
echo Set source = objShell.NameSpace(InputFolder).Items >> _zipIt.vbs
echo objShell.NameSpace(ZipFile).CopyHere(source) >> _zipIt.vbs
echo wScript.Sleep 2000 >> _zipIt.vbs

CScript  _zipIt.vbs  %ZIPDIR%  %DESTDIR%

echo ------------------------------------------------------------------------
echo Brandon, Press "Save" when prompted in GameMaker about changed files 
echo ------------------------------------------------------------------------

pause

:END
endlocal