cask "clipshield" do
  version "0.1.0"
  sha256 "dd38e5b4ac01f9fee50118020d9a2be538e6c1273e46c65aa941c2d99c33762d"

  url "https://github.com/maferland/clipshield/releases/download/v#{version}/ClipShield-v#{version}-macos.dmg"
  name "ClipShield"
  desc "Auto-clear sensitive data from your macOS clipboard"
  homepage "https://github.com/maferland/clipshield"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClipShield.app"

  zap trash: "~/Library/Preferences/com.maferland.clipshield.plist"
end
