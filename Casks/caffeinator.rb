cask "caffeinator" do
  version "0.0.1-beta1"
  sha256 "98da5498c1eeaf59bf4cb040ff33dfbda17c75ef4a10d3f97dbdd1e37b0757b9"

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
