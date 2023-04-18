@echo off
color b
title Installing...
echo -
echo Installing GatoClient...
curl -s -k -L -O https://github.com/Gatohost/gatoclient/releases/download/v1.1.7/Gatoclient-Remastered-portable-win.exe
move Gatoclient-Remastered-portable-win.exe GatoClient.exe
mkdir Gatoclient-Remastered
cd Gatoclient-Remastered
echo -
echo OK!
echo Installing Config...
curl -s -k -L -O https://raw.githubusercontent.com/duyhungdev/GatoInstall/main/Gatoclient-Remastered/config.json
echo OK!
echo -
mkdir addons
cd addons
echo Installing addons...
curl -s -k -L -O https://raw.githubusercontent.com/duyhungdev/GatoInstall/main/Gatoclient-Remastered/addons/KeyBoard-Overlay.js
curl -s -k -L -O https://raw.githubusercontent.com/duyhungdev/GatoInstall/main/Gatoclient-Remastered/addons/altManager.js
echo OK!
echo -
cd ..
cd ..
echo Installing ResourceSwapper...
curl -s -k -L -O https://github.com/duyhungdev/GatoInstall/raw/main/GatoclientResourceSwapper.zip
tar -xf GatoclientResourceSwapper.zip
del GatoclientResourceSwapper.zip
echo OK!
echo -
move GatoclientResourceSwapper %USERPROFILE%\Documents
move Gatoclient-Remastered %appdata%
move GatoClient.exe %USERPROFILE%\Desktop
echo cai dat thanh cong!
echo Client da dc chuyen den desktop cua ban!
