# Homebrew Tap for WindowShelf

This repository contains the [Homebrew](https://brew.sh) Cask formula for [WindowShelf](https://windowshelf.app), a native macOS sidebar for organizing, switching, and managing open windows.

## Installation

```bash
brew tap simatik/windowshelf https://github.com/simatik/homebrew-windowshelf
brew install --cask windowshelf
```

## Updating

```bash
brew upgrade --cask windowshelf
```

## Setup (for maintainers)

1. Create a public GitHub repo named `homebrew-windowshelf` under the `simatik` org (or your GitHub account).
2. Push the contents of this `homebrew-tap/` directory to that repo:
   ```bash
   cd homebrew-tap
   git init
   git add .
   git commit -m "Add WindowShelf cask v1.0.11"
   git remote add origin git@github.com:simatik/homebrew-windowshelf.git
   git push -u origin main
   ```
3. Users can then install with the `brew tap` + `brew install` commands above.

## Updating the Cask (after a new release)

1. Update `version` and `sha256` in `Casks/windowshelf.rb`
2. The `sha256` can be obtained with: `shasum -a 256 /tmp/WindowShelf.dmg`
3. Commit and push to the tap repo

The `livecheck` block uses the Sparkle appcast feed to detect new versions automatically.
