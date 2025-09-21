class Skvim < Formula
  desc "SketchyVim - Security-hardened Vim controller with application allowlisting"
  homepage "https://github.com/tadeucbm/SketchyVim-Allowlist"
  url "https://github.com/tadeucbm/SketchyVim-Allowlist/archive/refs/heads/main.tar.gz"
  sha256 "9f092b37d35ff11115a369fb72be0a81340be461f736e14cdeca5586d54b872f"
  license "MIT"
  version "1.1.0"

  depends_on "make" => :build

  def install
    # Build the security-hardened binary
    system "make"
    # Install the renamed binary
    bin.install "bin/skvim"
  end

  test do
    system "#{bin}/skvim", "--help"
  end
end