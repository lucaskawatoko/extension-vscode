## Instalador e Desinstalador de Extensões do VS Code

Este repositório contém scripts de linha de comando em batch que facilitam a instalação e a remoção das extensões do Visual Studio Code. Os scripts automatizam o processo de instalação e desinstalação das extensões listadas, economizando tempo e esforço durante a configuração e manutenção do ambiente de desenvolvimento.

### Instalador de Extensões

Este é um script que facilita a instalação das extensões do Visual Studio Code. Ele verifica se as extensões listadas estão instaladas e, se não estiverem, as instala automaticamente.

#### Lista de Extensões

As seguintes extensões serão verificadas e instaladas:

- **Python**: `ms-python.python`
- **Pylance**: `ms-python.vscode-pylance`
- **Prettier**: `esbenp.prettier-vscode`
- **Material Icon Theme**: `PKief.material-icon-theme`
- **GitHub Copilot**: `GitHub.copilot`
- **Django**: `batisteo.vscode-django`
- **Indent Rainbow**: `oderwat.indent-rainbow`
- **Color Highlight**: `naumovs.color-highlight`
- **Rainbow CSV**: `mechatroner.rainbow-csv`
- **SQLite Viewer**: `qwtel.sqlite-viewer`
- **Debugpy**: `ms-python.debugpy`
- **Live Server**: `ritwickdey.LiveServer`
- **Auto Complete Tag**: `formulahendry.auto-complete-tag`
- **Português (Brasil) Language Pack**: `MS-CEINTL.vscode-language-pack-pt-BR`
- **Code Spell Checker (Português Brasileiro)**: `streetsidesoftware.code-spell-checker-portuguese-brazilian`
- **Code Spell Checker**: `streetsidesoftware.code-spell-checker`
- **Software.com for Visual Studio Code**: `softwaredotcom.swdc-vscode`
- **HTML CSS Support**: `ecmel.vscode-html-css`
- **CodeSnap**: `adpyke.codesnap`
- **readme-preview**: `manishsencha.readme-preview`
- **GitHub Pull Requests**: `GitHub.vscode-pull-request-github`
- **Git History**: `donjayamanne.githistory`
- **GitLens — Git supercharged**: `eamodio.gitlens`

#### Como Usar

1. Baixe o arquivo `install_extensions.bat` deste repositório.
2. Execute o arquivo `install_extensions.bat` clicando duas vezes sobre ele.
3. Aguarde até que todas as extensões sejam verificadas e instaladas.
4. Após a conclusão, você verá a mensagem "Todas as extensões foram verificadas e instaladas.".

### Desinstalador de Extensões

Este é um script que facilita a remoção de todas as extensões instaladas no Visual Studio Code. Ele obtém a lista de extensões instaladas e remove cada uma delas automaticamente.

#### Como Usar

1. Baixe o arquivo `uninstall_extensions.bat` deste repositório.
2. Execute o arquivo `uninstall_extensions.bat` clicando duas vezes sobre ele.
3. Aguarde até que todas as extensões sejam removidas.
4. Após a conclusão, você verá a mensagem "Todas as extensões foram removidas.".

### Observações

- Certifique-se de ter o Visual Studio Code instalado em seu sistema antes de executar os scripts.
- As extensões serão instaladas ou removidas automaticamente, portanto, certifique-se de revisar e fazer backup das extensões importantes antes de executar os scripts.
- Estes scripts são compatíveis com o Windows e requerem o Prompt de Comando do Windows para serem executados.

Estes scripts são úteis para automatizar tarefas de instalação e desinstalação de extensões do Visual Studio Code, tornando mais fácil e rápido o processo de configuração e manutenção do ambiente de desenvolvimento.