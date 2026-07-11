cask "leeway" do
  version "0.1.0"
  # TODO: placeholder until the first real GitHub release is published —
  # replace with the actual sha256 from release.sh's SHA256SUMS output.
  sha256 :no_check

  url "https://github.com/sshykvlv/leeway/releases/download/v#{version}/Leeway.zip",
      verified: "github.com/sshykvlv/leeway/"
  name "Leeway"
  desc "Menu-bar app showing remaining Claude and Codex usage limits"
  homepage "https://leeway.ykv.lv"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Leeway.app"

  zap trash: [
    "~/Library/Caches/lv.ykv.leeway",
    "~/Library/Preferences/lv.ykv.leeway.plist",
    "~/Library/Saved Application State/lv.ykv.leeway.savedState",
  ]
end
