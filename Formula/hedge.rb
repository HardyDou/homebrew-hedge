class Hedge < Formula
  desc "Secure, local-first password manager CLI"
  homepage "https://github.com/HardyDou/hedge"
  version "1.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.3/hedge-cli-macos-arm64.tar.gz"
      sha256 "115de103d44d4470fcb015d80c49bebe7a2fef37543e6955efefe95726776e9f"
    else
      # Intel not separately built, use arm64 binary (Rosetta 2 compatible)
      url "https://github.com/HardyDou/hedge/releases/download/v1.9.3/hedge-cli-macos-arm64.tar.gz"
      sha256 "115de103d44d4470fcb015d80c49bebe7a2fef37543e6955efefe95726776e9f"
    end
  end

  on_linux do
    url "https://github.com/HardyDou/hedge/releases/download/v1.9.3/hedge-cli-linux-x64.tar.gz"
    sha256 "85fd964c4a0c4179bfd4a8af2f44b7d33260f0e791ff3360922fbcb28049c41f"
  end

  def install
    bin.install "hedge"
  end

  test do
    assert_match "Hedge CLI", shell_output("#{bin}/hedge --version")
  end
end
