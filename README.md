# WillieCubed's Homebrew Tap

A [Homebrew tap](https://docs.brew.sh/Taps) — a third-party repository of formulae — for
[WillieCubed](https://github.com/WillieCubed)'s command-line tools. Tapping it lets
`brew` install, upgrade, and remove these tools exactly the way it handles core packages.

> A tap is just a Git repo of formula files. Homebrew maps
> `brew install WillieCubed/tap/<formula>` to this repo
> (`github.com/WillieCubed/homebrew-tap`) and the file `Formula/<formula>.rb` — the
> `homebrew-` prefix and `Formula/` path are added automatically.

## Usage

Tap once, then install any formula by name:

```bash
brew tap WillieCubed/tap
brew install <formula>
```

…or install in a single step, without tapping first:

```bash
brew install WillieCubed/tap/<formula>
```

Update and remove as usual:

```bash
brew update && brew upgrade <formula>   # update to the latest release
brew uninstall <formula>                # remove a tool
brew untap WillieCubed/tap              # remove this tap entirely
```

## Available formulae

- [`claude-lms`](Formula/claude-lms.rb) — run [Claude Code](https://claude.com/claude-code)
  against local models in [LM Studio](https://lmstudio.ai).
  `brew install WillieCubed/tap/claude-lms`
- [`disk-janitor`](Formula/disk-janitor.rb) — stop git worktrees from eating your disk by
  deduplicating build artifacts and sweeping junk on a schedule.
  `brew install WillieCubed/tap/disk-janitor`

## How this tap is maintained

Each tool keeps the source of truth for its formula in its **own** repository and
publishes a tagged release; the matching `Formula/<name>.rb` here points at that
release's source tarball and `sha256`.

## License

[MIT](LICENSE)
