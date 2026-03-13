class Hedge < Formula
  desc "Secure, local-first password manager CLI"
  homepage "https://github.com/HardyDou/hedge"
  version "1.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-arm64.tar.gz"
      sha256 "86c3cf39b9e0cec7fd81f4f2dec6d484f99a0aac07262e5c7a113aac6a2fb2c6"
    else
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-macos-x64.tar.gz"
      sha256 "" # Will be filled after first release
    end
  end

  on_linux do
    url "https://github.com/HardyDou/hedge/releases/download/v1.9.1/hedge-cli-linux-x64.tar.gz"
    sha256 "1604a26b7b04314e6955a6ef418076e005290b438f0a882900854b4fc30a77df"
  end

  def install
    bin.install "hedge"
  end

  test do
    assert_match "Hedge CLI", shell_output("#{bin}/hedge --version")
  end
end
