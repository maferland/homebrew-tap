cask "tidy" do
  version "1.1.1"
  sha256 "96f11f5c18773c0725c613c584bb4207551d6111cee07310827797918ad123c9"

  url "https://github.com/maferland/tidy/releases/download/v#{version}/Tidy-v#{version}-macos.dmg"
  name "Tidy"
  desc "Automatically clean up messy clipboard text"
  homepage "https://github.com/maferland/tidy"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tidy.app"

  zap trash: "~/Library/Preferences/com.maferland.tidy.plist"
end
