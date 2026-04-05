class Xyron < Formula
  desc "Project-aware shell with built-in runtime manager"
  homepage "https://github.com/semos-labs/xyron"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-arm64.tar.gz"
      sha256 "128d1e1b94d62bc19dd6c669469752baa49ec23cdd7d4b6edaef4d675096643d"
    end
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-x64.tar.gz"
      sha256 "b4ab5c6360055fcdd45e8a875b2cf669e9d21408c30bad07681261508ace783d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-x64.tar.gz"
      sha256 "d5bef2964e93f7362f8bd21d3eb07f94fc9091519c8a2c52308a8b80ab3281d4"
    end
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-arm64.tar.gz"
      sha256 "94d2d04dc7a5a6cff17ecb5c71911a6065dbe250c5727ff45776487a41e1f2c1"
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
