# shell

Personal zsh configuration. Entry point is `main`, which loads `env` and all scripts under `bin/`.

## Install

```sh
git clone git@github.com:beruda/shell.git ~/.zsh_run_commands
cd ~/.zsh_run_commands
cp .env.example .env  # fill in your secrets
./install.sh
```

## Structure

```
main                  Entry point (sourced by ~/.zshrc)
env                   Loads .env secrets into the shell
bin/
  commit              Semantic git commit helper (conventional commits with emoji)
  dev                 Dev utilities: mkcd, close-port, secret, kubectl port-forwards, k8s
  git                 Git aliases with self-documenting g.help system
  network             Network lookup and block binary-search utilities
  tenderly            Gateway helper (gw) with network resolution and slug validation
  personal/
    fun               mirko easter egg
    pb                P.blade commit helper (git-ignored)
```

`bin/personal/*` is git-ignored except `bin/personal/fun`.

## Environment Variables

Secrets live in `.env` (git-ignored). See `.env.example` for required variables.

## Dependencies

- `jq`, `curl` - network/gateway functions
- `cast` (Foundry) - `mirko`, `find-block`
- `gcloud` - `secret`
- `kubectl` - node port-forwards, k8s commands
- `golangci-lint` - `golint` alias
