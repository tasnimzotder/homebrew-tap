class AwsTui < Formula
  desc "Terminal UI for browsing AWS resources"
  homepage "https://github.com/tasnimzotder/aws-tui"
  version "0.3.1-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.3.1-alpha/aws-tui_0.3.1-alpha_darwin_amd64.tar.gz"
      sha256 "b42fbdf2490027623f08b67f3f8cbd7671507ef7e7051663ace50def3fc6a36d"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.3.1-alpha/aws-tui_0.3.1-alpha_darwin_arm64.tar.gz"
      sha256 "6e40042546c0ce2571d3d600f81b55b155b09049a49ff35d092d16a408824a7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.3.1-alpha/aws-tui_0.3.1-alpha_linux_amd64.tar.gz"
      sha256 "ded38e0bd26b9852b0283d6e9b5c2c2f4a93c76a92a46b28a1ace842f162e8f0"
    end

    on_arm do
      url "https://github.com/tasnimzotder/aws-tui/releases/download/v0.3.1-alpha/aws-tui_0.3.1-alpha_linux_arm64.tar.gz"
      sha256 "c274025d783f254840f0440d503fad661a4c6146423d84280159689de2a44e4a"
    end
  end

  def install
    bin.install "awstui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awstui --version", 2)
  end
end
