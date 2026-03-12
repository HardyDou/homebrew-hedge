class Hedge < Formula
  desc "Secure, local-first password manager CLI"
  homepage "https://github.com/HardyDou/hedge"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-arm64.tar.gz"
      sha256 "81ad0c927c8d3e48a07091804a1597152ccd8556416de5ce5206764bfd5e37ea"
    else
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-x64.tar.gz"
      sha256 "" # Will be filled after first release
    end
  end

  on_linux do
    url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-linux-x64.tar.gz"
    sha256 "7925b8e7fdbe62c0671962b460ce099bd0da4f44a62e21b5b5d8b1929fd25cc4"
  end

  def install
    bin.install "hedge"
  end

  test do
    assert_match "Hedge CLI", shell_output("#{bin}/hedge --version")
  end
end
