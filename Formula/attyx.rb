class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "1d2fa6be4c9247ec927d0acff4ac444997b3cb15856f5dc913e1bbf8bb4a1f07"
    end
  end

  def install
    bin.install "attyx"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
