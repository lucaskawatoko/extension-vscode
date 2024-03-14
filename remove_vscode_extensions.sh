#!/bin/bash

# Obtém a lista de extensões instaladas
extensions=$(code --list-extensions)

# Loop pelas extensões para removê-las
for ext in $extensions; do
    echo "Removendo extensão: $ext"
    code --uninstall-extension $ext
done

echo -e "\nTodas as extensões foram removidas."
