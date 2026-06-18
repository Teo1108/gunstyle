@echo off
title Lanzador GunStyle
echo ==============================================
echo Iniciando GunStyle E-Commerce Full Stack...
echo ==============================================

echo [1/2] Levantando el Backend de Node.js (Servidor)...
start "GunStyle Backend" cmd /k "title GunStyle Backend && cd server && node server.js"

echo [2/2] Levantando el Frontend de React (Vite)...
start "GunStyle Frontend" cmd /k "title GunStyle Frontend && npm run dev"

echo.
echo ¡Servidores iniciados! Puedes visualizar la aplicacion en http://localhost:5173 
echo Utiliza el archivo stop.bat para apagarlos facilmente.
pause
