cask "poke" do
  version "1.4.0"
  sha256 "7fd6f4367140615ef275a8c52eb1d451e12f361e18aa690b0d6374fcd90086f8"

  url "https://github.com/maferland/poke/releases/download/v#{version}/Poke.zip"
  name "Poke"
  desc "Menu bar reminders for Claude Code sessions"
  homepage "https://github.com/maferland/poke"

  depends_on formula: "maferland/tap/poke-mcp"
  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Poke.app"

  zap trash: "~/Library/Preferences/com.maferland.poke.plist"
end
