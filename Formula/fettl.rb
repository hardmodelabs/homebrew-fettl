class Fettl < Formula
  desc "AI slop detection for Rust, Python, and TypeScript codebases"
  homepage "https://fettl.dev"
  version "0.19.84"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://downloads.fettl.dev/releases/v0.19.84/fettl-0.19.84-aarch64-apple-darwin.tar.gz"
    sha256 "390f37c77b4ab547d0ff9ee591a431a09e48c93582488ffcc0c4a3885cb59bad"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://downloads.fettl.dev/releases/v0.19.84/fettl-0.19.84-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6376934d07b02e1d8ab065c2697b80fda4c497ab4d9f151546964d3017b2a27f"
  end

  def install
    bin.install "fettl"
  end

  test do
    assert_equal "fettl #{version}\n", shell_output("#{bin}/fettl --version")
  end
end
