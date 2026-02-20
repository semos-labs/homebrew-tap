class Epist < Formula
  desc "Terminal email client with vim-style keybindings"
  homepage "https://github.com/semos-labs/epist"
  version "0.1.19-rc1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-arm64.tar.zst"
      sha256 "bf31501d87fb0417ce2f5fccc48825c2d890c3cc197b669c40f1732ce042665d"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-x64.tar.zst"
      sha256 "5deb4aa7e4a0329071d7b4ce61c7bf29eaf374c404ac9e0afa250985a86ecd56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-arm64.tar.zst"
      sha256 "7c904fb897c647a3fa429b4db5cadd0ae45611fc903be2cbb7675ad063e75054"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-x64.tar.zst"
      sha256 "c0b4740876ff0e3ca7b3e9e5decf0ef52c8713e76b68611d354dcefabc7adeef"
    end
  end

  def install
    bin.install "epist"
  end

  test do
    assert_predicate bin/"epist", :executable?
  end
end
