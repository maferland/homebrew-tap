cask "snip" do
  version "2.8.2"
  sha256 "60a2738946e56a17a3c705fab2acde87399f68585dff9e8a9a2a17bfad7e9935"

  url "https://github.com/maferland/snip/releases/download/v#{version}/Snip-v#{version}-macos.dmg"
  name "Snip"
  desc "Automatically strip tracking parameters from copied URLs"
  homepage "https://github.com/maferland/snip"


  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma


  app "Snip.app"

  zap trash: "~/Library/Preferences/com.maferland.snip.plist"
end
