cask "differ" do
  version "0.1.1"
  sha256 "30c3de444d000ca38e46570e9644ddf39232f116c4b12b8bd50cb52dab47c85d"

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
