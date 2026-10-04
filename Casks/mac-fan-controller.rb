# typed: strict
# frozen_string_literal: true

cask "mac-fan-controller" do
  version "0.1.3-alpha"
  sha256 "f0b8e06f4bebde13dd1e3f22981c21ca4507b2619fd68a22427208e11aa672f6"

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

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-r", "-d", "com.apple.quarantine", "{{appdir}}/Mac Fan Controller.app"],
        writable_paths: ["Mac Fan Controller.app"], writable_base: :appdir
  end

  uninstall quit:   "com.tasnimzotder.mac-fan-controller",
            script: {
              executable: "#{appdir}/Mac Fan Controller.app/Contents/MacOS/mac-fan-controller",
              args:       ["--unregister-helper"],
              sudo:       false,
            }

  zap trash: "~/Library/Application Support/Mac Fan Controller"

  caveats <<~EOS
    This alpha is not notarized. Installation removes this app's download quarantine attribute.
    Enable the fan-control helper in the app's Settings and approve it in macOS.
    Before uninstalling, choose Apple automatic and remove the helper in Settings.
  EOS
end
