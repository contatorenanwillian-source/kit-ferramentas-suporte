@echo off
title Script de Suporte Tecnico - Diagnostico Rapido
echo ======================================================
echo    FERRAMENTA DE SUPORTE - ANALISE DE SISTEMA
echo ======================================================

echo [1] Verificando conexao de rede...
ipconfig /all | findstr "IPv4 Endereco"
echo Testando latencia com o Google...
ping 8.8.8.8 -n 2

echo.
echo [2] Limpando ficheiros temporarios...
del /s /f /q %temp%\*.*
del /s /f /q C:\Windows\Temp\*.*

echo.
echo [3] Verificando integridade de ficheiros do sistema...
sfc /verifyonly

echo.
echo ======================================================
echo Diagnostico concluido com sucesso!
pause
