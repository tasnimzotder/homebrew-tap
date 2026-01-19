cask "caffeinator" do
  version "0.0.1-alpha8"
  sha256 "7f1bcf026533c7260432240f5f85edf474a1464aa70c0d02e7eeb960191b4349"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.0.1-alpha8/Caffeinator_v0.0.1-alpha8_aarch64.dmg"
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
