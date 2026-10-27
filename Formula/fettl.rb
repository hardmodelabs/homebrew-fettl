class Fettl < Formula
  desc "AI slop detection for Rust, Python, and TypeScript codebases"
  homepage "https://fettl.dev"
  version "0.19.79"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://downloads.fettl.dev/releases/v0.19.79/fettl-0.19.79-aarch64-apple-darwin.tar.gz"
    sha256 "ed3651045a050de47d67a13fe90c59e4b3fa923edfea2dba344fa1f32b36a484"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://downloads.fettl.dev/releases/v0.19.79/fettl-0.19.79-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f6038689001af85971c0dd8a9f4549f930856a3f014579c7b499b0931b40d55"
  end

  def install
    bin.install "fettl"
  end

  test do
    assert_equal "fettl #{version}\n", shell_output("#{bin}/fettl --version")
  end
end
