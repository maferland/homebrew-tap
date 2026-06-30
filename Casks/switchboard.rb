cask "switchboard" do
  version "1.0.1"
  sha256 "36ee25d7c6e5ba50cbce5626fb92f0c70814a0986fa21974f18a25125d2eb9ee"

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
