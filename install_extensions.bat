@echo off
title Instalador de Extensões do VS Code

rem Lista de extensões a serem verificadas e instaladas
set "extensions=ms-python.python ms-python.vscode-pylance esbenp.prettier-vscode PKief.material-icon-theme GitHub.copilot christian-kohler.path-intellisense batisteo.vscode-django oderwat.indent-rainbow naumovs.color-highlight mechatroner.rainbow-csv qwtel.sqlite-viewer ms-python.debugpy natqe.reload ritwickdey.LiveServer formulahendry.auto-complete-tag MS-CEINTL.vscode-language-pack-pt-BR streetsidesoftware.code-spell-checker-portuguese-brazilian streetsidesoftware.code-spell-checker softwaredotcom.swdc-vscode ecmel.vscode-html-css adpyke.codesnap manishsencha.readme-preview GitHub.vscode-pull-request-github donjayamanne.githistory eamodio.gitlens"

rem Define a quantidade total de extensões
for %%i in (%extensions%) do (set /a total+=1)

rem Inicializa o contador de extensões instaladas
set installed=0

rem Loop pelas extensões para verificar e instalar
for %%i in (%extensions%) do (
    echo Verificando a extensão: %%i
    code --list-extensions | findstr /i "%%i" >nul
    if errorlevel 1 (
        echo Instalando extensão: %%i
        code --install-extension %%i
    ) else (
        echo Extensão já instalada: %%i
    )

    rem Atualiza o contador de extensões instaladas
    set /a installed+=1

    rem Calcula o progresso atual
    set /a progress=(installed * 100 / total)

    rem Exibe a barra de progresso
    echo.
    echo Progresso: [====================================================================================================] %progress%%

    rem Aguarda um curto intervalo antes de continuar
    timeout /t 1 >nul
)

echo.
echo Todas as extensões foram verificadas e instaladas.
pause