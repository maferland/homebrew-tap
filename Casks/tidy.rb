cask "tidy" do
  version "1.1.2"
  sha256 "e9f793e5c54322cd6a294d985935842e394913274a7c30d0dc0d578b4bb03106"

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
