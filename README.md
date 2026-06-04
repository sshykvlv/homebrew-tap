# sshykvlv/homebrew-tap

Homebrew tap for [Lidless](https://lidless.ykv.lv) and other tools by [@sshykvlv](https://github.com/sshykvlv).

## Install

```sh
brew install --cask sshykvlv/tap/lidless
```

Or tap first, then install:

```sh
brew tap sshykvlv/tap
brew install --cask lidless
```

## Available casks

| Cask | Description |
|------|-------------|
| [`lidless`](Casks/lidless.rb) | Menu-bar app that keeps your Mac awake with the lid closed |

## Uninstall

```sh
brew uninstall --cask lidless        # remove the app
brew uninstall --zap --cask lidless  # also remove preferences and the pmset sudoers rule
```
