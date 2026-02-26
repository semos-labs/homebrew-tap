class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.16"
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
      sha256 "6765321da6cb3aff3588940de1363c74d7489470ed28ce5bf2f1aafaae751fb0"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "2a2c9c075e4a6187b3f125236253687ca46cef5f83125f9dfa7c1bc8b2670556"
    end
  end

  def install
    bin.install "attyx"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
