class Fettl < Formula
  desc "AI slop detection for Rust, Python, and TypeScript codebases"
  homepage "https://fettl.dev"
  version "0.19.83"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://downloads.fettl.dev/releases/v0.19.83/fettl-0.19.83-aarch64-apple-darwin.tar.gz"
    sha256 "6aa463442efcae5f2500a48380e82b45632d70a129c19788d543b8c38cff9b1f"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://downloads.fettl.dev/releases/v0.19.83/fettl-0.19.83-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5fb5c645c840d1fe1b3d16b35d53004b3c51253dfbba124af0d69fbd102f4ef2"
  end

  def install
    bin.install "fettl"
  end

  test do
    assert_equal "fettl #{version}\n", shell_output("#{bin}/fettl --version")
  end
end
