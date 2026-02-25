class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.7"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "8f929a29316449c852a24cfb1aece3102b33403c385e734263e3198f134045d8"
    end
  end

  def install
    bin.install "attyx"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
