cask "snip" do
  version "2.1.0"
  sha256 "24754c6043e00ef933ac5999507a89191cc4867c858a7026889ec4e68af0df18"

  url "https://github.com/maferland/snip/releases/download/v#{version}/Snip-v#{version}-macos.dmg"
  name "Snip"
  desc "Automatically strip tracking parameters from copied URLs"
  homepage "https://github.com/maferland/snip"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Snip.app"

  zap trash: "~/Library/Preferences/com.maferland.snip.plist"
end
