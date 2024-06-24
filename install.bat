:: Installation script :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::                        SoundClassifier TensorFlow
::
:: This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat 
::
:: For help with install scripts, notes on variables and methods available, tips,
:: and explanations, see /src/modules/install_script_help.md

@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

REM Backwards compatibility with Server 2.6.5
if "!utilsScript!" == "" if "!sdkScriptsDirPath!" NEQ "" set utilsScript=%sdkScriptsDirPath%\utils.bat

:: Download the models and store in /assets
call "%utilsScript%" GetFromServer "models/" "sound-classification-models-tf.zip" "data" "Downloading Sound classification models..."

REM TODO: Check assets created and has files
REM set moduleInstallErrors=...
