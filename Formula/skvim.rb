class Skvim < Formula
  desc "SketchyVim - Security-hardened Vim controller with application allowlisting"
  homepage "https://github.com/tadeucbm/skvim"
  url "https://github.com/tadeucbm/skvim/archive/refs/heads/main.tar.gz"
  sha256 "7061c16b9e60063e092f07bacd29499e2b6ba810ad6579f0e05122e89d0f76fa"
  license "MIT"
  version "1.1.0"

  depends_on "make" => :build

  def install
    # Build the security-hardened binary
    system "make"
    # Install the renamed binary
    bin.install "bin/skvim"
  end

  service do
    run opt_bin/"skvim"
    keep_alive true
    log_path var/"log/skvim.log"
    error_log_path var/"log/skvim.log"
  end

  test do
    system "#{bin}/skvim", "--help"
  end
end