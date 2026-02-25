cask "burn" do
  version "1.4.0"
  sha256 "c50d68396a4208c199236fe6e5a2a2b136bc3f57b692f08241901e25fb67d6e2"

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
