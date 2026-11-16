# sshykvlv/homebrew-tap

Homebrew tap for [Lidless](https://lidless.ykv.lv) and other tools by [@sshykvlv](https://github.com/sshykvlv).

## Install

```sh
brew install --cask sshykvlv/tap/lidless
brew install --cask sshykvlv/tap/ai-status-bar
```

Installing by the full `sshykvlv/tap/<cask>` name also trusts that cask, so this is all you need.

Or tap first and install by short name — since Homebrew 6, trust the cask before the first install
(otherwise Homebrew refuses with "untrusted tap"; see [Tap Trust](https://docs.brew.sh/Tap-Trust)):

```sh
brew tap sshykvlv/tap
brew trust --cask sshykvlv/tap/lidless
brew install --cask lidless
```

## Available casks

| Cask | Description |
|------|-------------|
| [`lidless`](Casks/lidless.rb) | Menu-bar app that keeps your Mac awake with the lid closed |
| [`ai-status-bar`](Casks/ai-status-bar.rb) | Menu-bar app showing remaining Claude and Codex usage, plus what's slowing your Mac |

## Uninstall

```sh
brew uninstall --cask lidless        # remove the app
brew uninstall --zap --cask lidless  # also remove preferences and the pmset sudoers rule
```
