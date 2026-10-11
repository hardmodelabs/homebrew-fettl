class Fettl < Formula
  desc "AI slop detection for Rust, Python, and TypeScript codebases"
  homepage "https://fettl.dev"
  version "0.19.78"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://downloads.fettl.dev/releases/v0.19.78/fettl-0.19.78-aarch64-apple-darwin.tar.gz"
    sha256 "3e72eb48882d2c1f0e454dd84c239f2670daf2935515ccb8f3abdc9e9b336e43"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://downloads.fettl.dev/releases/v0.19.78/fettl-0.19.78-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b989a935f10418c9d2058a8009f11675dae17c5891e134037a0771feeb326d4d"
  end

  def install
    bin.install "fettl"
  end

  test do
    assert_equal "fettl #{version}\n", shell_output("#{bin}/fettl --version")
  end
end
