cask "differ" do
  version "0.1.0"
  sha256 "d4ee221fb1183c195145a18eb4b53912a841afec790c697f4d59e5c45d1541f7"

  url "https://github.com/maferland/differ/releases/download/v#{version}/Differ_#{version}_universal.dmg"
  name "Differ"
  desc "Desktop image comparison tool with pixel-level diffing"
  homepage "https://github.com/maferland/differ"

  depends_on macos: ">= :catalina"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Differ.app"

  zap trash: "~/Library/Preferences/com.maferland.differ.plist"
end
