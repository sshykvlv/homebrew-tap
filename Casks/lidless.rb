cask "lidless" do
  version "1.0"
  sha256 "1a53f5d7e32e99c18d59c86ba171a14eaa170b1698fe4a13cc1dc438647e2b9b"

  url "https://github.com/sshykvlv/lidless/releases/download/v#{version}/Lidless.zip",
      verified: "github.com/sshykvlv/lidless/"
  name "Lidless"
  desc "Menu-bar app that prevents sleep while the lid is closed"
  homepage "https://lidless.ykv.lv/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Lidless.app"

  zap delete: "/etc/sudoers.d/lidless",
      trash:  [
        "~/Library/Caches/lv.ykv.lidless",
        "~/Library/Preferences/lv.ykv.lidless.plist",
        "~/Library/Saved Application State/lv.ykv.lidless.savedState",
      ]
end
