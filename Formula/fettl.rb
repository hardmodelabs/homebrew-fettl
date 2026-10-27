class Fettl < Formula
  desc "AI slop detection for Rust, Python, and TypeScript codebases"
  homepage "https://fettl.dev"
  version "0.19.80"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://downloads.fettl.dev/releases/v0.19.80/fettl-0.19.80-aarch64-apple-darwin.tar.gz"
    sha256 "ec62cb1b3a488f41126e75473cc9803c48dfdaee370a44f790d0d07cfbc3f2f5"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://downloads.fettl.dev/releases/v0.19.80/fettl-0.19.80-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "159f08920dc5b537466f41cd4f7531186a0ca32155331e572ff63dc3c8e0f4fb"
  end

  def install
    bin.install "fettl"
  end

  test do
    assert_equal "fettl #{version}\n", shell_output("#{bin}/fettl --version")
  end
end
