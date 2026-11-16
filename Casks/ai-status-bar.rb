cask "ai-status-bar" do
  version "0.2.0"
  sha256 "ca5eb620599a9a225cac3232598af317456a5bd0bc78a06ff1401be336f74527"

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
