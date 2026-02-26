cask "burn" do
  version "1.7.0"
  sha256 "db0a909d8f5b3f7cd4892bb1af93aa521834ff354fbf3b811bd2b302303202a9"

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
