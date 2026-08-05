cask "clipshield" do
  version "0.1.1"
  sha256 "71a17a9c6b7e7a0f09128d00ae6b40367bb300239ba736b66f1fc70175b64c36"

  url "https://github.com/maferland/clipshield/releases/download/v#{version}/ClipShield-v#{version}-macos.dmg"
  name "ClipShield"
  desc "Auto-clear sensitive data from your clipboard"
  homepage "https://github.com/maferland/clipshield"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClipShield.app"

  zap trash: "~/Library/Preferences/com.maferland.clipshield.plist"
end
