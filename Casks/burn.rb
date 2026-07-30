cask "burn" do
  version "1.13.1"
  sha256 "27a6dcebd3b80f463bdc6e8ee6e6b9f5cc7e74cf12a022650562c903147aeecc"

  url "https://github.com/maferland/burn/releases/download/v#{version}/Burn-v#{version}-macos.dmg"
  name "Burn"
  desc "Track Claude Code spending from the macOS menu bar"
  homepage "https://github.com/maferland/burn"

  depends_on macos: :sonoma

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Burn.app"

  zap trash: "~/Library/Preferences/com.maferland.burn.plist"
end
