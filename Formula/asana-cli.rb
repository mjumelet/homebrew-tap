class AsanaCli < Formula
  desc "A fast, lightweight command-line interface for Asana"
  homepage "https://github.com/mjumelet/asana-cli"
  license "MIT"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "92dd1d128450e73ac92cce77c8820d47ced10465be486ddb0704e3d39cb7b989"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "8fdd967b85df1e715291d7de0eef3846e8436414661dd449e10031c9cab17150"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_arm64.tar.gz"
      sha256 "9c1d3834f0acd083d58e2ec6c9d9512913d2ef0c83895d1904013a79b4a947b0"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_amd64.tar.gz"
      sha256 "9660f52acde3bac0c4244aa78d0b42b987b22d80945b5636470ca67ae6c97f30"
    end
  end

  def install
    bin.install "asana"
  end

  test do
    assert_match "asana-cli", shell_output("#{bin}/asana version")
  end
end
