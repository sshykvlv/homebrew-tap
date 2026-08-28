cask "lidless" do
  version "1.0.2"
  sha256 "dec94c5979a494c87691a011f84e453e94a984d722dc7c4a00a06c58b73dcbe3"

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
