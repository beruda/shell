# shell

Personal zsh configuration. Entry point is `main`, which loads `env` and all scripts under `bin/`.

## Structure

- `main` - Entry point: sources `env`, then all `bin/*` and `bin/personal/*` scripts.
- `env` - Loads `.env` secrets into the shell environment.
- `bin/commit` - Semantic git commit helper for tenderly-core (conventional commits with emoji). Aliases: `lint`, `iter`, `ship`, `feat`, `chore`, `fix`, etc.
- `bin/dev` - Dev utilities: `mkcd`, `close-port`, `secret` (gcloud), kubectl port-forwards for blockchain nodes, k8s context switching and scaling.
- `bin/git` - Git aliases with a self-documenting `g.help` system using `verbose_alias`.
- `bin/network` - Tenderly network lookup and block binary-search utilities (`network`, `find-block`, `binary-search-block`).
- `bin/tenderly` - Tenderly gateway helper (`gw`) with network resolution, slug validation, and local mode. Also `mktdly` build helper.
- `bin/personal/fun` - `mirko` easter egg.
- `bin/personal/pb` - P.blade commit helper (git-ignored).

Note: `bin/personal/*` is git-ignored except `bin/personal/fun`.

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
