cask "caffeinator" do
  version "0.1.2-alpha"
  sha256 "db32f75ba018cb8bec2c8aa0dd083039991aceecf377318684a6940a0b83ec33"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.1.2-alpha/Caffeinator_v0.1.2-alpha_aarch64.dmg"
  name "Caffeinator"
  desc "Minimal macOS menu bar app to keep your Mac awake"
  homepage "https://github.com/tasnimzotder/caffeinator"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Caffeinator.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Caffeinator.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/LaunchAgents/com.tasnimzotder.caffeinator.plist",
    "~/Library/Preferences/com.tasnimzotder.caffeinator.plist",
  ]
end
