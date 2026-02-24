cask "burn" do
  version "1.3.2"
  sha256 "07b507ac90131af79a99664e740cbf205d70830389d700b820c836632c6b7afb"

  url "https://github.com/maferland/burn/releases/download/v#{version}/Burn-v#{version}-macos.dmg"
  name "Burn"
  desc "Track Claude Code spending from the macOS menu bar"
  homepage "https://github.com/maferland/burn"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Burn.app"

  zap trash: "~/Library/Preferences/com.maferland.burn.plist"

  caveats <<~EOS
    Burn requires ccusage to read Claude Code session data.
    Install it with: npm install -g ccusage
  EOS
end
