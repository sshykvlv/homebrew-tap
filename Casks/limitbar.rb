cask "limitbar" do
  version "0.1.0"
  # TODO: placeholder until the first real GitHub release is published —
  # replace with the actual sha256 from release.sh's SHA256SUMS output.
  sha256 :no_check

  url "https://github.com/sshykvlv/limitbar/releases/download/v#{version}/LimitBar.zip",
      verified: "github.com/sshykvlv/limitbar/"
  name "LimitBar"
  desc "Menu-bar app showing remaining Claude and Codex usage limits"
  homepage "https://github.com/sshykvlv/limitbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "LimitBar.app"

  zap trash: [
    "~/Library/Caches/lv.ykv.limitbar",
    "~/Library/Preferences/lv.ykv.limitbar.plist",
    "~/Library/Saved Application State/lv.ykv.limitbar.savedState",
  ]
end
