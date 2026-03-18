class Termrocket < Formula
  desc "Animated rocket on git push for kitty and ghostty terminals"
  homepage "https://github.com/maferland/termrocket"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maferland/termrocket/releases/download/v0.2.0/termrocket-macos-arm64"
      sha256 "62d1a910761a355e2f5e785e4ddb7f6b579ed17f550681ffe551e1415a569231"
    else
      url "https://github.com/maferland/termrocket/releases/download/v0.2.0/termrocket-macos-x86_64"
      sha256 "f3e9a389f55c288bd9c23dba95c00f9e06b2c9b05c53cda7ae3891baf3f5ada2"
    end
  end

  on_linux do
    url "https://github.com/maferland/termrocket/releases/download/v0.2.0/termrocket-linux-x86_64"
    sha256 "1b17e1b9cbb0db877f6afab33ff676657f07a747cd9c6ed8283c08bc8439c38d"
  end

  def install
    binary = Dir["termrocket-*"].first || "termrocket"
    mv binary, "termrocket" if binary != "termrocket"
    bin.install "termrocket"
  end

  test do
    assert_match "termrocket", shell_output("#{bin}/termrocket --version")
  end
end
