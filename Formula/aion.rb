class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/semos-labs/aion"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-arm64.tar.zst"
      sha256 "5ce1a4e57f1b19712d7cceaed86b91e8f7c5dc9062573e4e44c865568fe90268"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-x64.tar.zst"
      sha256 "f8f7b0f39ba90ac053972910ca9d603d545e1c3c2aeed83b86283f8901501465"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-arm64.tar.zst"
      sha256 "7f7e2c7f38ac4cbe3bbfc17e0359b4f0848132ce10c6c338e8e98eb07ad9b817"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-x64.tar.zst"
      sha256 "ac94c025cf38a5710e312a250a0fab4f8dfe855acaf2991c761ca93aabc01234"
    end
  end

  def install
    bin.install "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
