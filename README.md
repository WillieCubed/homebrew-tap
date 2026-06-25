# WillieCubed's Homebrew tap

Homebrew formulae for my command-line tools. Tap it once, then install anything in it the same
way you install any other Homebrew package.

## Usage

```bash
brew tap WillieCubed/tap
brew install <formula>
```

Or in a single step:

```bash
brew install WillieCubed/tap/<formula>
```

Update and remove as usual:

```bash
brew upgrade <formula>
brew uninstall <formula>
brew untap WillieCubed/tap
```

## Formulae

- [`claude-lms`](Formula/claude-lms.rb): run Claude Code against local models in LM Studio.
  `brew install WillieCubed/tap/claude-lms`
- [`disk-janitor`](Formula/disk-janitor.rb): keep git worktrees from filling your disk with
  duplicated build artifacts. `brew install WillieCubed/tap/disk-janitor`

## How it's maintained

Each tool lives in its own repository and publishes tagged releases. The formula here points at a
release tarball and its checksum.

## License

[MIT](LICENSE)
