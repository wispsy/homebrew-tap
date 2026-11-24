# homebrew-tap

Homebrew formulas for wispsy applications, frameworks, tools, etc.

## Installation

Add the Wispsy tap to your Homebrew installation:

```bash
brew tap wispsy/tap
```

## Available Formulas

| Formula | Description | Installation |
|---|---|---|
| **[clownfish](Formula/clownfish.rb)** | Lightweight, zero-dependency modern terminal emulator | `brew install clownfish` |
| **[evok](Formula/evok.rb)** | Pure-Python high-performance package manager and virtualization runtime | `brew install evok` |
| **[immunity](Formula/immunity.rb)** | Ahead-of-time (AOT) compiled Zsh plugin manager in Python | `brew install immunity` |

## Available Casks

| Cask | Description | Installation |
|---|---|---|
| **[clownfish](Casks/clownfish.rb)** | Standalone macOS application bundle for Clownfish terminal | `brew install --cask wispsy/tap/clownfish` |

## Current application artifacts

The formulas select Evok 0.1.2 and Clownfish 0.6.5 from their verified PyPI
source distributions. The Clownfish 0.6.5 standalone cask selects the exact
qualified GitHub archive and requires Apple Silicon (arm64); the formula uses
its selected Homebrew Python/Tk runtime. Formula/cask source hashes identify
immutable downloads independently of repository main branches.

[Wispsy release inventory](https://github.com/wispsy/wispsy/blob/main/docs/releases/STATUS.md)
compares PyPI versions with current source and records remaining release gates.
