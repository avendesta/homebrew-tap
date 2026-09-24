# Homebrew tap for Rekord

Install [Rekord](https://github.com/avendesta/Rekord), a macOS menu bar app that records system audio and your microphone as separate tracks:

```sh
brew install --cask avendesta/tap/rekord
```

Or add the tap first:

```sh
brew tap avendesta/tap
brew install --cask rekord
```

Requires macOS 14 (Sonoma) or later. Rekord is signed with a Developer ID and notarized by Apple.

Update with `brew upgrade --cask rekord`, remove with `brew uninstall --cask rekord` (add `--zap` to also delete its preferences; your recordings are never touched).
