class Xyron < Formula
  desc "Project-aware shell with built-in runtime manager"
  homepage "https://github.com/semos-labs/xyron"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-arm64.tar.gz"
      sha256 "fefe3173f3ba9af4676b366b144994c74e02e4ea00ab779addd586026f49e6be"
    end
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-x64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-x64.tar.gz"
      sha256 "c0dbcd61ed2766d58748a149b419087b227465d24c35b3925b153dcca6e18e4d"
    end
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-arm64.tar.gz"
      sha256 "c1327e1bbcefcd0268754d6585b9625f21030252e970816e08ef30b8aed2600f"
    end
  end

  def install
    bin.install "xyron"
  end

  test do
    assert_predicate bin/"xyron", :executable?
    assert_match "xyron", shell_output("#{bin}/xyron --version")
  end
end
