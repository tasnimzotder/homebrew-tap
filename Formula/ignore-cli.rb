class IgnoreCli < Formula
  desc "A CLI tool for managing .gitignore files"
  homepage "https://github.com/tasnimzotder/ignore-cli"
  version "0.1.0-beta"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tasnimzotder/ignore-cli/releases/download/v0.1.0-beta/ignore-cli_0.1.0-beta_darwin_amd64.tar.gz"
      sha256 "2d68750f38c749d60a1ca9bb0fe246d12abb6beb2a8e7c7e6878b416fc5d72f3"
    end

    on_arm do
      url "https://github.com/tasnimzotder/ignore-cli/releases/download/v0.1.0-beta/ignore-cli_0.1.0-beta_darwin_arm64.tar.gz"
      sha256 "2af62b2c8fbf643e43ee4fa7ece89a995c34f7ecf2e3b1dad519cacc8e1bfbda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tasnimzotder/ignore-cli/releases/download/v0.1.0-beta/ignore-cli_0.1.0-beta_linux_amd64.tar.gz"
      sha256 "d94bfbedafaab9facae539f65ba6a65952398a82df5378fe66e0f1ea22bb3461"
    end

    on_arm do
      url "https://github.com/tasnimzotder/ignore-cli/releases/download/v0.1.0-beta/ignore-cli_0.1.0-beta_linux_arm64.tar.gz"
      sha256 "71f056954309f02348e9f33d8d227cfd82116f9d9a19502ac7a5543294b3851e"
    end
  end

  def install
    bin.install "ignore"
  end

  test do
    system "#{bin}/ignore", "--help"
  end
end
