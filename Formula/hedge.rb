class Hedge < Formula
  desc "Secure, local-first password manager CLI"
  homepage "https://github.com/HardyDou/hedge"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-arm64.tar.gz"
      sha256 "579053655ca0b3ae3a36de47cf4e32579d3c4354bed93f1cbb27cccee4a6ab2b"
    else
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-x64.tar.gz"
      sha256 "" # Will be filled after first release
    end
  end

  on_linux do
    url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-linux-x64.tar.gz"
    sha256 "fec6d267af65507d9d1db10dcf245f96b8337cbd654cec4e0bee030a224d686f"
  end

  def install
    bin.install "hedge"
  end

  test do
    assert_match "Hedge CLI", shell_output("#{bin}/hedge --version")
  end
end
