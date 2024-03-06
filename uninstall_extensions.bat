@echo off

rem Obtém a lista de extensões instaladas
for /f "tokens=*" %%i in ('code --list-extensions') do (
    echo Removendo extensão: %%i
    code --uninstall-extension %%i
)

echo Todas as extensões foram removidas.
