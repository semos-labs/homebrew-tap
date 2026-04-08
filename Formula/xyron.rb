class Xyron < Formula
  desc "Project-aware shell with built-in runtime manager"
  homepage "https://github.com/semos-labs/xyron"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-arm64.tar.gz"
      sha256 "3cacbd6befa36b10d6f2a690c3fcfe4b351b81c244d659314e246f122d403bf6"
    end
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-x64.tar.gz"
      sha256 "bc048d9f5409894debf81632be947980bb0a8007081eac177a8d47b27186173d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-x64.tar.gz"
      sha256 "a345c4664410f496716d4e15f8fb8241c278df434f152a9dc33fc3083841b7c8"
    end
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-arm64.tar.gz"
      sha256 "dbc6085400e2b08651e385651ae2df96f996f236b0b650043d673e932ce0b4e7"
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
