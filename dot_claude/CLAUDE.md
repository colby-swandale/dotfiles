# Claude Instructions

- all projects should be worked out of `~/Developer`
- prefer jj (Jujutsu) over raw git commands where available; repos are colocated so both work
- when working on a feature or bugfix, keep distinct features in separate changes — use `jj new` to start a new change, not amend unrelated work into an existing one
- for repos not yet using jj, use git worktrees via `gwt <branch-name> [base-branch]` and clean up with `git wtr <path>`
- Terraform & Ruby tooling (ruby-lsp, rubocop) should run through `mise exec` to
    respect per-project Ruby versions
- dotfiles are managed with chezmoi; source dir is `~/.local/share/chezmoi`.
  - After editing config files, run `chezmoi add <file>` to sync

## Containers
- prefer Apple's `container` CLI over `docker` — it runs Linux containers as lightweight VMs on Apple silicon
  - commands mirror Docker: `container build -t <name> .`, `container run --rm <image>`, `container images ls`, `container ls`
  - uses OCI-compatible images — works with Docker Hub, GHCR, etc.
