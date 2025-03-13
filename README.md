# Virgil Language Server

Virgil-LSP is an implementation of the Language Server Protocol (LSP) tailored for the Virgil programming language. It is designed as a backend for the Virgil VSCode extension.

## Features
[ ] Error reporting
[ ] Jump-to definitions
[ ] Search for usage
[ ] Standard library support
[ ] Autocomplete
[ ] Incremental compilation
[ ] Multi-target build awareness
[ ] Socket support

## Installation
WIP
```sh
make
```

## Usage

The `virgil-lsp` functions as a language server that uses (by default) the standard input/output as its JSON-RPC channel. `virgil-lsp` should be launched by a client (such as the Virgil VSCode extension) to ensure proper configuration. When executed along, it takes in the following command line arguments:
- `--log <log-file>`: Enables logging messages (written to `<log-file>`)
- `--rpc [stdio|socket]`: Specifies the communication method used for JSON-RPC (WIP)
