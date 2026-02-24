cask "poke" do
  version "1.2.0"
  sha256 "876228b15521757fe3aca7944bd8f303ddd0e48d4d332947366080d55520ac3c"

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
