cask "poke" do
  version "1.2.1"
  sha256 "5fc999106e6a98ba7e57b030d9bfa651bff4d711872312f91e5308bb43c9babd"

  url "https://github.com/maferland/poke/releases/download/v#{version}/Poke.zip"
  name "Poke"
  desc "Menu bar reminders for Claude Code sessions"
  homepage "https://github.com/maferland/poke"

  depends_on formula: "maferland/tap/poke-mcp"

  app "Poke.app"

  zap trash: [
    "~/Library/Preferences/com.maferland.poke.plist",
  ]
end
