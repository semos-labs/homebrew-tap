class Xyron < Formula
  desc "Project-aware shell with built-in runtime manager"
  homepage "https://github.com/semos-labs/xyron"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-arm64.tar.gz"
      sha256 "689fd3da16af4158a86652a7e520e7620ce89cf25d161fa642575e23440b31e2"
    end
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-x64.tar.gz"
      sha256 "f16c691df68b23723e9d52baa3cf859f4ad1ba6de5d5e84938dcd63c70da0561"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-x64.tar.gz"
      sha256 "86f37911ecd3e5987fec60826e405bd0b687e629e917cfb7967148eb87356646"
    end
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-arm64.tar.gz"
      sha256 "2f6b6210b14aae555a1d9070f2fdbe76c2dd7882f789e708381ee52a17b5493b"
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
