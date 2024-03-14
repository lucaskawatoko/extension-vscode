#!/bin/bash

# Lista de extensões a serem verificadas e instaladas
extensions="ms-python.python ms-python.vscode-pylance esbenp.prettier-vscode PKief.material-icon-theme GitHub.copilot christian-kohler.path-intellisense batisteo.vscode-django oderwat.indent-rainbow naumovs.color-highlight mechatroner.rainbow-csv qwtel.sqlite-viewer ms-python.debugpy natqe.reload ritwickdey.LiveServer formulahendry.auto-complete-tag MS-CEINTL.vscode-language-pack-pt-BR streetsidesoftware.code-spell-checker-portuguese-brazilian streetsidesoftware.code-spell-checker softwaredotcom.swdc-vscode ecmel.vscode-html-css adpyke.codesnap yzhang.markdown-all-in-one ms-python.autopep8 GitHub.vscode-pull-request-github donjayamanne.githistory eamodio.gitlens ms-azuretools.vscode-docker EditorConfig.EditorConfig natqe.reload"

# Define a quantidade total de extensões
total=$(echo $extensions | wc -w)

# Inicializa o contador de extensões instaladas
installed=0

# Loop pelas extensões para verificar e instalar
for ext in $extensions; do
    echo "Verificando a extensão: $ext"
    if ! code --list-extensions | grep -q "$ext"; then
        echo "Instalando extensão: $ext"
        code --install-extension $ext
    else
        echo "Extensão já instalada: $ext"
    fi

    # Atualiza o contador de extensões instaladas
    installed=$((installed + 1))

    # Calcula o progresso atual
    progress=$((installed * 100 / total))

    # Exibe a barra de progresso
    printf "\nProgresso: ["
    printf '#%.0s' $(seq 1 $progress)
    printf "%.0s " $(seq 1 $((100 - $progress)))
    printf "] $progress%%\n"

    # Aguarda um curto intervalo antes de continuar
    sleep 1
done

echo -e "\nTodas as extensões foram verificadas e instaladas."
