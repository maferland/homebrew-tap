cask "snip" do
  version "2.8.1"
  sha256 "de102400548bde0324e4ea2595b22b6773af10c81c1db03240b6cd0522b22699"

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
