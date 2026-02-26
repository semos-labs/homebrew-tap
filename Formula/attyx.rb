class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.14"
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
      sha256 "06dc89c7784ac59d826e2020a2793f018e78349f8f2d4cfb679e49d38bdceaf3"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "518c358c33f170b73a2d9f939415819387cbcdd3f851c0b12f36c3f05eb07a08"
    end
  end

  def install
    bin.install "attyx"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
