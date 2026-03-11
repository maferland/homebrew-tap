cask "poke" do
  version "1.7.0"
  sha256 "cbbf9b2709646373e4ddab5c4ecb2c669111dd7b8221736d1a9559ce96beedb1"

  url "https://github.com/maferland/poke/releases/download/v#{version}/Poke.zip"
  name "Poke"
  desc "Ephemeral reminders for Claude Code sessions"
  homepage "https://github.com/maferland/poke"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Poke.app"

  zap trash: "~/Library/Preferences/com.maferland.poke.plist"
end
