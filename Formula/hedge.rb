class Hedge < Formula
  desc "Secure, local-first password manager CLI"
  homepage "https://github.com/HardyDou/hedge"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.0/hedge-cli-macos-arm64.tar.gz"
      sha256 "af727b03f1b1863385edba59a6ab1ddc076850eb444e41f4b8c257d735dee202" # Will be filled after first release
    else
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.0/hedge-cli-macos-x64.tar.gz"
      sha256 "" # Will be filled after first release
    end
  end

  on_linux do
    url "https://github.com/HardyDou/hedge/releases/download/v1.9.0/hedge-cli-linux-x64.tar.gz"
    sha256 "7925b8e7fdbe62c0671962b460ce099bd0da4f44a62e21b5b5d8b1929fd25cc4" # Will be filled after first release
  end

  def install
    bin.install "hedge"
  end

  test do
    assert_match "Hedge CLI", shell_output("#{bin}/hedge --version")
  end
end
