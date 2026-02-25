class AwsTui < Formula
  desc "Terminal UI for browsing AWS resources"
  homepage "https://github.com/tasnimzotder/aws-tui"
  version "0.1.0-alpha1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.1.0-alpha1/aws-tui_0.1.0-alpha1_darwin_amd64.tar.gz"
      sha256 "82a006ed859b4afc94247e599ef6f0003dba9aa22ea79fcfc50ded6d36bafde2"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.1.0-alpha1/aws-tui_0.1.0-alpha1_darwin_arm64.tar.gz"
      sha256 "c94ceb76f5f8e814bf5ff14635574379bbbce9788f2094b5c59b716c641bf41f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.1.0-alpha1/aws-tui_0.1.0-alpha1_linux_amd64.tar.gz"
      sha256 "05b4f13287eddee58cd40fe97c62ded70c6e8955fc1f55fa5cca9bc803f74097"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.1.0-alpha1/aws-tui_0.1.0-alpha1_linux_arm64.tar.gz"
      sha256 "958f05714e289e1a42d425be977ef9f8aea71f5b7f154956f7748d3ea151a906"
    end
  end

  def install
    bin.install "awstui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awstui --version", 2)
  end
end
