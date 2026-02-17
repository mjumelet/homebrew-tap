class AsanaCli < Formula
  desc "A fast, lightweight command-line interface for Asana"
  homepage "https://github.com/mjumelet/asana-cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA256"
    end
  end

  def install
    bin.install "asana"
  end

  test do
    assert_match "asana-cli", shell_output("#{bin}/asana version")
  end
end
