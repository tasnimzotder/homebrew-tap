cask "caffeinator" do
  version "0.1.0-alpha"
  sha256 "9148de4a8c8c3cda2fe3ba12543c05840257b7072ea9775edaaeee706b0d8816"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.1.0-alpha/Caffeinator_v0.1.0-alpha_aarch64.dmg"
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
