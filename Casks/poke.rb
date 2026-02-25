cask "poke" do
  version "1.2.2"
  sha256 "6d8076901c3ad7b9d956d32aa98b67873b758215a4920d1bde7e6f0001f83360"

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
