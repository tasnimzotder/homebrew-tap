cask "caffeinator" do
  version "0.0.1-alpha7"
  sha256 "6f3a2b5bc4c77f48ff5942bb2150a925c2142c2b0c118b8f76a7b9dde3099419"

  url "https://github.com/tasnimzotder/caffeinator/releases/download/v0.0.1-alpha7/Caffeinator_v0.0.1-alpha7_aarch64.dmg"
  name "Caffeinator"
  desc "Minimal macOS menu bar app to keep your Mac awake"
  homepage "https://github.com/tasnimzotder/caffeinator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Caffeinator.app"

  zap trash: [
    "~/Library/LaunchAgents/com.tasnimzotder.caffeinator.plist",
    "~/Library/Preferences/com.tasnimzotder.caffeinator.plist",
  ]
end
