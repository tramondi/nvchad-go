# NvChad for Golang

## dependencies

* `go`
* `nodejs`
* `npm`
* `yarn`

* [neovim](https://neovim.io/)
* [gopls](https://github.com/golang/tools/tree/master/gopls)
* `golangci`
```sh
go install github.com/nametake/golangci-lint-langserver@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
```
* `bufls`
```sh
go install github.com/bufbuild/buf-language-server/cmd/bufls@latest
```
* `yamlls`
```sh
yarn global add yaml-language-server
```
* `docker_compose_language_service`:
```sh
npm install @microsoft/compose-language-service
```
* `jsonls`
```sh
npm i -g vscode-langservers-extracted
```
* `eslint`
```sh
npm i -g vscode-langservers-extracted
```
* `bashls`
```sh
npm i -g bash-language-server
```
* `volar`
```sh
npm install -g @vue/language-server
```

[== More Language Servers ==](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

## install
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/tramondi/nvchad-go/master/install.sh)"
```
