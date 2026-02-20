class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/semos-labs/aion"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-arm64.tar.zst"
      sha256 "6fbf60ea10c7d9082d94610ef0e713ada229d11a53f0f50f435bddeaa6cbe177"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-x64.tar.zst"
      sha256 "d9bf7987ab176b234ee5618021e47bffd17009224ba7eee47dbb5e5aeb3ed1a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-arm64.tar.zst"
      sha256 "7c58a148bb5fd1b126d92968f95ccd70985f411e6ca8656f3031d1cc33bbe746"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-x64.tar.zst"
      sha256 "574d37feec851556b7318a08d8d2daea6ccc3116ff9773ef111ada3f6b7fc792"
    end
  end

  def install
    bin.install "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
