cask "snip" do
  version "2.2.0"
  sha256 "ef46d1ac95ba15cb4fd4ca551255aa9c114ba55be5c1ac90e1b5262d0cd797d5"

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
