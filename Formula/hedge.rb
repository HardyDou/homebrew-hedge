class Hedge < Formula
  desc "Secure, local-first password manager CLI"
  homepage "https://github.com/HardyDou/hedge"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-arm64.tar.gz"
      sha256 "72dc6f71ea2ccdfc0e65d2ca366a8e69affad256a0e892b469bdd7f669f120f0"
    else
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-x64.tar.gz"
      sha256 "" # Will be filled after first release
    end
  end

  on_linux do
    url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-linux-x64.tar.gz"
    sha256 "1e84f7d397c954b3b2b8d49cb236ea3dd5b2aff4199693401c74fd81ed7c7620"
  end

  def install
    bin.install "hedge"
  end

  test do
    assert_match "Hedge CLI", shell_output("#{bin}/hedge --version")
  end
end
