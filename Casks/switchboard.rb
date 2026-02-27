cask "switchboard" do
  version "1.0.0"
  sha256 "78749cef35bebdbe18c5b197f99be196ddc89815ddb82479f8eb8e7f92aeea2a"

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
