class Epist < Formula
  desc "Terminal email client with vim-style keybindings"
  homepage "https://github.com/semos-labs/epist"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-arm64.tar.zst"
      sha256 "e67968de1c9d73543aba8e957200800d67fb5f2088ca713fa6ac7660a40630dc"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-x64.tar.zst"
      sha256 "39a610df6c1502c6c74bd6703b8da5b34aac5dded5c726492c7ee970b32bcfa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-arm64.tar.zst"
      sha256 "f397eba23ef62d85b7e81e3848eada9c863fc253c237e029d6bab7b1740fdb47"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-x64.tar.zst"
      sha256 "73419df4187cb5c243a69bc46e46370686179fd56455cafa56ce507145cb2db6"
    end
  end

  def install
    bin.install "epist"
  end

  test do
    assert_predicate bin/"epist", :executable?
  end
end
