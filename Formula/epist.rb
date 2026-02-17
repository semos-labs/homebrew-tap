class Epist < Formula
  desc "Terminal email client with vim-style keybindings"
  homepage "https://github.com/semos-labs/epist"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-arm64.tar.zst"
      sha256 "c8ff166adaece9a335f4282a30269f3ac5fbb229255b7b895763affe2e15d0bd"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-x64.tar.zst"
      sha256 "bce2d4535785f2bbcf41f01da48f998e34de75b9119f9cccfced38d54984c67d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-arm64.tar.zst"
      sha256 "6f1d22118d5b06f2c67371626fd474f4dea703e8eb09600de84b092a534bd5c2"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-x64.tar.zst"
      sha256 "1f49b0c996bda7525cdf84b8b0c5ec3190e99746534e9d3e9d62197e83211787"
    end
  end

  def install
    bin.install "epist"
  end

  test do
    assert_predicate bin/"epist", :executable?
  end
end
