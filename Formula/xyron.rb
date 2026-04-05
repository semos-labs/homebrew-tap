class Xyron < Formula
  desc "Project-aware shell with built-in runtime manager"
  homepage "https://github.com/semos-labs/xyron"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-arm64.tar.gz"
      sha256 "c3b6643cacb7b972778d8af09f20d1635d149a301ec9893a536e3586d5454242"
    end
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-darwin-x64.tar.gz"
      sha256 "56e3a717383a15eeab43b53e9a8ac4a52b6b47315cffab746bc7111cacb8a45e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-x64.tar.gz"
      sha256 "dac09557fc16aee45c804ec800f6bd5a7e637037442e045dcf68bb260b257466"
    end
    on_arm do
      url "https://github.com/semos-labs/xyron/releases/download/v#{version}/xyron-linux-arm64.tar.gz"
      sha256 "3845059b831a37f5cd8e9d2f624a6507996f49cbf4913a9f6009b477d9820cc7"
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
