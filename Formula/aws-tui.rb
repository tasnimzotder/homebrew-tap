class AwsTui < Formula
  desc "Terminal UI for browsing AWS resources"
  homepage "https://github.com/tasnimzotder/aws-tui"
  version "0.4.0-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.4.0-alpha/aws-tui_0.4.0-alpha_darwin_amd64.tar.gz"
      sha256 "e7f788aed11c54bfb88952dea39eb396a8df48264fa7e6c9503c93391933a6ae"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.4.0-alpha/aws-tui_0.4.0-alpha_darwin_arm64.tar.gz"
      sha256 "3ede8576f3be476cedab5e7c804a9e87dc3aa351214ed438c97cc1fb3d9f3227"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.4.0-alpha/aws-tui_0.4.0-alpha_linux_amd64.tar.gz"
      sha256 "bec2d305c42d51ae9271059cb2f30d76fb61573d4adea1347508e242e18a2698"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.4.0-alpha/aws-tui_0.4.0-alpha_linux_arm64.tar.gz"
      sha256 "ae4122b8ba2275db86a6435811ba32f0b7074486cb0ec4e07b1c7bba970d2cbb"
    end
  end

  def install
    bin.install "awstui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awstui --version", 2)
  end
end
