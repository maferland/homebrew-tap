cask "snip" do
  version "2.4.0"
  sha256 "235f056a04cba12eaf6a9a8997be7208d67d6481047a5908b58a2cf862d59689"

  url "https://github.com/maferland/snip/releases/download/v#{version}/Snip-v#{version}-macos.dmg"
  name "Snip"
  desc "Automatically strip tracking parameters from copied URLs"
  homepage "https://github.com/maferland/snip"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Snip.app"

  zap trash: "~/Library/Preferences/com.maferland.snip.plist"
end
