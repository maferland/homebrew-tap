cask "tidy" do
  version "1.1.2"
  sha256 "6c841c3ef912b95c35bc1fcf35f72cf2747f24c805882bca0e20167fb7b2ac55"

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
