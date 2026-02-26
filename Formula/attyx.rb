class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.12-rc1"
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
      sha256 "b94834c3c7f9714fbfed24f33418a3bf7d21a167237db385b3374601a82a20ee"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "attyx"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
