cask "caffeinator" do
  version "0.2.0-alpha"
  sha256 "9da3e7fb1dc5f28fc6a149bc7f0fed80ffc905fb78580685a3f1526b04bbb1e5"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.2.0-alpha/Caffeinator_v0.2.0-alpha_aarch64.dmg"
  name "Caffeinator"
  desc "Menu bar app to keep your Mac awake"
  homepage "https://github.com/tasnimzotder/caffeinator"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Caffeinator.app"

  postflight_steps do
    run "/usr/bin/xattr",
                   args: ["-cr", "{{appdir}}/Caffeinator.app"],
                   writable_paths: ["Caffeinator.app"], writable_base: :appdir
  end

  zap trash: [
    "~/Library/LaunchAgents/com.tasnimzotder.caffeinator.plist",
    "~/Library/Preferences/com.tasnimzotder.caffeinator.plist",
  ]
end
