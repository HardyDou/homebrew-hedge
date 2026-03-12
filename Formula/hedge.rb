class Hedge < Formula
  desc "Secure, local-first password manager CLI"
  homepage "https://github.com/HardyDou/hedge"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-arm64.tar.gz"
      sha256 "ce44b29f1c147db27b2c403b81a77f38df5b24174923fc7d105bbdb0fdc818b6"
    else
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-x64.tar.gz"
      sha256 "" # Will be filled after first release
    end
  end

  on_linux do
    url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-linux-x64.tar.gz"
    sha256 "7081777652527fa792988965f124e7cafe23403736d009682ad35b8bd373fc52"
  end

  def install
    bin.install "hedge"
  end

  test do
    assert_match "Hedge CLI", shell_output("#{bin}/hedge --version")
  end
end
