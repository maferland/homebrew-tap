cask "switchboard" do
  version "1.0.1"
  sha256 "417e5e4e4099e682342879f09a3fb5d6f71a60f6a1d44b84aaa5b3665957c72b"

  url "https://github.com/maferland/switchboard/releases/download/v#{version}/Switchboard-v#{version}-macos.dmg"
  name "Switchboard"
  desc "Auto-switch audio and video devices when you dock your Mac"
  homepage "https://github.com/maferland/switchboard"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Switchboard.app"

  zap trash: "~/.config/switchboard"
end
