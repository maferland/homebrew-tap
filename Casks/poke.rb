cask "poke" do
  version "1.1.0"
  sha256 "9cd85a62fd203218b7df40c9890db07ecc60ce215ca4f539adda8693cc8a0ddd"

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
