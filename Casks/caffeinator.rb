cask "caffeinator" do
  version "0.1.1-alpha"
  sha256 "108cadec45cabbff055c97f869f970200da28058f1727e0b5e5cc33702db4374"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.1.1-alpha/Caffeinator_v0.1.1-alpha_aarch64.dmg"
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
