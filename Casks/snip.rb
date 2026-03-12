cask "snip" do
  version "2.7.0"
  sha256 "0f01433850a286bcfc5205e478993adec708522b9c29e84c119fc897c6d46771"

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
