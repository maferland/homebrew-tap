cask "switchboard" do
  version "1.0.0"
  sha256 "a50047d2774141032656e1f28066a803fd63ea8a344f10c3fd4f0a3cc2b209b3"

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
