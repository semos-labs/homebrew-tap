class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.15"
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
      sha256 "e6e74607e1171bfb4c78cc6c3ddbf2a252101b92f67a77ccb6bf5e7309429d71"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "e60d57115ac3412f85184a8f1a4fab1c0403e47f8be8eae1038ac9ddf60430b5"
    end
  end

  def install
    bin.install "attyx"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
