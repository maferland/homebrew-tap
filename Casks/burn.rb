cask "burn" do
  version "1.12.4"
  sha256 "1e0e9d5c0e138fba75bd632d28d451d7416408af695993586bfb4fdad08aa340"

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
