class AsanaCli < Formula
  desc "A fast, lightweight command-line interface for Asana"
  homepage "https://github.com/mjumelet/asana-cli"
  license "MIT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v1.1.0/asana-cli_1.1.0_darwin_arm64.tar.gz"
      sha256 "52a762170707931c22d37f9faff2e7c6487cfc4f1a2701866a9a2923977863a8"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "8e6676d87d8107c7d6c93fff14be6a720d98d2a22c072ac6b943966122ef7ee9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_arm64.tar.gz"
      sha256 "4f1d02e21a3c10ee1d97ae5a50525b0e8321c298a536631c52e814d0c0314bf3"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_amd64.tar.gz"
      sha256 "2005fbe68857525ea32d4a4da2410556576ccad040730a39947117d61bcae09c"
    end
  end

  def install
    bin.install "asana"
  end

  test do
    assert_match "asana-cli", shell_output("#{bin}/asana version")
  end
end
