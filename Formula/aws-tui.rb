class AwsTui < Formula
  desc "Terminal UI for browsing AWS resources"
  homepage "https://github.com/tasnimzotder/aws-tui"
  version "0.2.0-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.0-alpha/aws-tui_0.2.0-alpha_darwin_amd64.tar.gz"
      sha256 "511da97f10b77be55d15ee9b1d9fe31daa73c01bc00ff37e90a1d2370b30df35"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.0-alpha/aws-tui_0.2.0-alpha_darwin_arm64.tar.gz"
      sha256 "b58d9a682578bb6c3c664829f08e939a97a6d64703b3ccd886cf6848555bc98b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.0-alpha/aws-tui_0.2.0-alpha_linux_amd64.tar.gz"
      sha256 "36a928cb139ec49c6b90a7a13c42877d8d6f494d23b9d932f9e1aa104b396e48"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.2.0-alpha/aws-tui_0.2.0-alpha_linux_arm64.tar.gz"
      sha256 "bca195207abad5cb5deb4388294424f741bf64c085b50fe99017373ea94ea0dc"
    end
  end

  def install
    bin.install "awstui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awstui --version", 2)
  end
end
