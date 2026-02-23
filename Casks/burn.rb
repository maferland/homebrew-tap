cask "burn" do
  version "1.1.1"
  sha256 "4e8aa32cad4b129482fe6f6b7eecb7e96c46649bc6bf8c67d4e0f1cf5b6fb7c2"

  url "https://github.com/maferland/burn/releases/download/v#{version}/Burn-v#{version}-macos.dmg"
  name "Burn"
  desc "Track Claude Code spending from the macOS menu bar"
  homepage "https://github.com/maferland/burn"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Burn.app"

  zap trash: "~/Library/Preferences/com.maferland.burn.plist"
end
