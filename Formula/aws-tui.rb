class AwsTui < Formula
  desc "Terminal UI for browsing AWS resources"
  homepage "https://github.com/tasnimzotder/aws-tui"
  version "0.2.1-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.1-alpha/aws-tui_0.2.1-alpha_darwin_amd64.tar.gz"
      sha256 "79e07c318b84a82eb92f5511f559d862fa94415d705f743bbbf79aa85aa1b930"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.1-alpha/aws-tui_0.2.1-alpha_darwin_arm64.tar.gz"
      sha256 "4bc2a07ac3737fc1ccc1ccfd17f5762921f933ff2b0eb86456ed19415b248eb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.1-alpha/aws-tui_0.2.1-alpha_linux_amd64.tar.gz"
      sha256 "14d22999c4f7e989db347e28e864d417cab012b08a97c8b892fa0d6873d4b359"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.1-alpha/aws-tui_0.2.1-alpha_linux_arm64.tar.gz"
      sha256 "45bb392acf9596e6b2b4be528ad683853b3b1237c4dc48090a82bdba14342074"
    end
  end

  def install
    bin.install "awstui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awstui --version", 2)
  end
end
