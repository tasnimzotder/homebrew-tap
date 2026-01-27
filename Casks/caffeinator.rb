cask "caffeinator" do
  version "0.0.1-beta1"
  sha256 "b77eed172ddf6a565ef547ca3d1d997b07249171b03ac84c6704ccd5ebad3e89"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.0.1-beta1/Caffeinator_v0.0.1-beta1_aarch64.dmg"
  name "Caffeinator"
  desc "Minimal macOS menu bar app to keep your Mac awake"
  homepage "https://github.com/tasnimzotder/caffeinator"

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
