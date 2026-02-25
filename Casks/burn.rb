cask "burn" do
  version "1.5.0"
  sha256 "71fa8b7fffce54e1bd644befb36cc0cbef0b2953aa4404e645faf972c25a1e1f"

  url "https://github.com/maferland/burn/releases/download/v#{version}/Burn-v#{version}-macos.dmg"
  name "Burn"
  desc "Track Claude Code spending from the macOS menu bar"
  homepage "https://github.com/maferland/burn"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Burn.app"

  zap trash: "~/Library/Preferences/com.maferland.burn.plist"
end
