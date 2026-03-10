cask "differ" do
  version "0.1.0"
  sha256 "e32281037763edec4e242eaa17c0ccba613964c485bfe89b1987b8f0e9c42f89"

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
