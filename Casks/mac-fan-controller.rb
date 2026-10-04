# typed: strict
# frozen_string_literal: true

cask "mac-fan-controller" do
  version "0.1.0-alpha"
  sha256 "2c7fc580b996c34e7f4645caea848d728f18029e4e95b68f4b738a8abd5e6e6f"

  url "https://github.com/tasnimzotder/mac-fan-controller/releases/download/v#{version}/MacFanController_v#{version}_aarch64.dmg"
  name "Mac Fan Controller"
  desc "Native menu bar fan control and temperature monitoring for MacBook Pro"
  homepage "https://github.com/tasnimzotder/mac-fan-controller"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Mac Fan Controller.app"

  uninstall quit:   "com.tasnimzotder.mac-fan-controller",
            script: {
              executable: "#{appdir}/Mac Fan Controller.app/Contents/MacOS/mac-fan-controller",
              args:       ["--unregister-helper"],
              sudo:       false,
            }

  zap trash: "~/Library/Application Support/Mac Fan Controller"

  caveats <<~EOS
    Enable the fan-control helper in the app's Settings and approve it in macOS.
    Before uninstalling, choose Apple automatic and remove the helper in Settings.
  EOS
end
