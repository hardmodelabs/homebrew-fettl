class Fettl < Formula
  desc "AI slop detection for Rust, Python, and TypeScript codebases"
  homepage "https://fettl.dev"
  version "0.19.82"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://downloads.fettl.dev/releases/v0.19.82/fettl-0.19.82-aarch64-apple-darwin.tar.gz"
    sha256 "412340e44af388e06772ca3066bd35206f972756f77cca0f71628bbecf3299df"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://downloads.fettl.dev/releases/v0.19.82/fettl-0.19.82-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e2b19706a49d44d07cd9e6666202b8f75096a3553c36fc308e21f90f034ff056"
  end

  def install
    bin.install "fettl"
  end

  test do
    assert_equal "fettl #{version}\n", shell_output("#{bin}/fettl --version")
  end
end
