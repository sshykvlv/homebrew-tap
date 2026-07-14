cask "ai-status-bar" do
  version "0.1.1"
  sha256 "eacb1564b906fc9e6b6299af9b6dbb6878bbc47b1270fb0b951ceb7a27978cdd"

  url "https://github.com/sshykvlv/ai-status-bar/releases/download/v#{version}/AIStatusBar.zip",
      verified: "github.com/sshykvlv/ai-status-bar/"
  name "AI Status Bar"
  desc "Menu-bar app showing remaining Claude and Codex usage limits"
  homepage "https://aistatusbar.ykv.lv"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AIStatusBar.app"

  zap trash: [
    "~/Library/Caches/lv.ykv.aistatusbar",
    "~/Library/Preferences/lv.ykv.aistatusbar.plist",
    "~/Library/Saved Application State/lv.ykv.aistatusbar.savedState",
  ]
end
