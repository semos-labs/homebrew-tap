class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.12-rc2"
  license "MIT"

  depends_on :linux

  on_linux do
    depends_on "glfw"
    depends_on "freetype"
    depends_on "fontconfig"
    depends_on "libpng"
    depends_on "mesa"
    depends_on "zlib"

    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "5aab72bb94985414fc2026209188ea4f4f480a8f033b616b8eb976976400a8a9"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "843f6f4faf6b286db8beb904bfae38a3d09df7a1d1bcfedaceac4ab3d507de42"
    end
  end

  def install
    bin.install "attyx"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
