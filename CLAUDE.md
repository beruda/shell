# zsh_run_commands

Personal zsh configuration files sourced by `~/.zshrc`. Each file is a standalone module organized by topic.

## Structure

- `commit` - Semantic git commit helper for tenderly-core (conventional commits with emoji). Aliases: `lint`, `iter`, `ship`, `feat`, `chore`, `fix`, etc.
- `dev` - Dev utilities: `mkcd`, `close-port`, `secret` (gcloud), kubectl port-forwards for blockchain nodes, k8s context switching and scaling.
- `git` - Git aliases with a self-documenting `g.help` system using `verbose_alias`.
- `network` - Tenderly network lookup and block binary-search utilities (`network`, `find-block`, `binary-search-block`).
- `personal` - Personal aliases (`pblade`, `tdlycore`), P.blade commit helper (`pb`), `mirko` easter egg.
- `tenderly` - Tenderly gateway helper (`gw`) with network resolution, slug validation, and local mode. Also `mktdly` build helper.

## Environment Variables

Secrets are stored in `.env` (git-ignored) and loaded automatically. See `.env.example` for the required variables.

- `API_KEY` - Tenderly API key
- `GATEWAY_KEY` - Tenderly gateway key (used by `gw`, `find-block`, `binary-search-block`)
- `PUBLIC_ADDR` - Primary public Ethereum address
- `PUBLIC_ADDR_2` - Secondary public Ethereum address
- `PRIVATE_KEY` - Ethereum private key
- `TENDERLY_CORE` - Path to tenderly-core repo (used by `commit` guard)

## Dependencies

- `jq`, `curl` - used by network/gateway functions
- `cast` (Foundry) - used by `mirko`, `find-block`
- `gcloud` - used by `secret`
- `kubectl` - used by node port-forwards and k8s commands
- `golangci-lint` - used by `golint` alias
