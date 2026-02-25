class AsanaCli < Formula
  desc "A fast, lightweight command-line interface for Asana"
  homepage "https://github.com/mjumelet/asana-cli"
  license "MIT"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v1.3.0/asana-cli_1.3.0_darwin_arm64.tar.gz"
      sha256 "58be5d102ed5eec0600f403f69329a5bd84c3ff9bc502b485da281525aabbafb"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "fd38d6bdf83d85cd4144b4ebfb6350ca57c7477436e754a83d0f95f8cfd3c399"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_arm64.tar.gz"
      sha256 "3a70deb28c51a89c877a10fa9dbdfb04c50b9702d63654317bc5a04f07858144"
    else
      url "https://github.com/mjumelet/asana-cli/releases/download/v#{version}/asana-cli_#{version}_linux_amd64.tar.gz"
      sha256 "852f5b6dcd5a1c5660ca1ec82f9b31806373bfc3cf12b16bd90b8f1b84c9e7f6"
    end
  end

  def install
    bin.install "asana"
  end

  test do
    assert_match "asana-cli", shell_output("#{bin}/asana version")
  end
end
