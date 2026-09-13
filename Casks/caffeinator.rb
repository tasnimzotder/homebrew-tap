cask "caffeinator" do
  version "0.1.3-alpha"
  sha256 "c71c14c4a1665a975c197a1abdbe02c4b5c4a62f323afdf83c6af96531faa764"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.1.3-alpha/Caffeinator_v0.1.3-alpha_aarch64.dmg"
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
