class Fettl < Formula
  desc "AI slop detection for Rust, Python, and TypeScript codebases"
  homepage "https://fettl.dev"
  version "0.19.81"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://downloads.fettl.dev/releases/v0.19.81/fettl-0.19.81-aarch64-apple-darwin.tar.gz"
    sha256 "6ca01d8c3919cabbc62c0e0b075982bbb4efd67e2fe5ea3922b01c08fed5e81f"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://downloads.fettl.dev/releases/v0.19.81/fettl-0.19.81-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e6011d1fa709701ca79daff50007ecd0ea47083db635c5312f06bc8f3ed0020"
  end

  def install
    bin.install "fettl"
  end

  test do
    assert_equal "fettl #{version}\n", shell_output("#{bin}/fettl --version")
  end
end
