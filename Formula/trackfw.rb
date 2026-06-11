class Trackfw < Formula
  desc "Governed software delivery framework: ADR → REQ → ROADMAP → kanban"
  homepage "https://github.com/kgsaran/trackfw"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kgsaran/trackfw/releases/download/v0.1.0/trackfw_0.1.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    else
      url "https://github.com/kgsaran/trackfw/releases/download/v0.1.0/trackfw_0.1.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kgsaran/trackfw/releases/download/v0.1.0/trackfw_0.1.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    else
      url "https://github.com/kgsaran/trackfw/releases/download/v0.1.0/trackfw_0.1.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "trackfw"
  end

  test do
    assert_match "trackfw", shell_output("#{bin}/trackfw version")
  end
end
