cask "caffeinator" do
  version "0.1.5-alpha"
  sha256 "d0e7691a6340548f50f2103b98c3c5f122387581ca25b22f08fc701d52fbf6e7"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.1.5-alpha/Caffeinator_v0.1.5-alpha_aarch64.dmg"
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
