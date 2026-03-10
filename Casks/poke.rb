cask "poke" do
  version "1.6.0"
  sha256 "258d1bf536dd8188ad41c6a183d8f68c60e0c4d300cbf06203b37a3eb1e54bf1"

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
