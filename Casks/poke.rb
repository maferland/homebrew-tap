cask "poke" do
  version "0.1.0"
  sha256 :no_check # Updated by release workflow

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
