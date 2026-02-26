cask "tidy" do
  version "1.0.1"
  sha256 "bdc9834aaa9b569e00cc2ac1ca71cdbc572750acfa270305ffeba049101930c5"

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
