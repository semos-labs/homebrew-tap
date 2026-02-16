class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/semos-labs/aion"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-arm64"
      sha256 "077c0cef07a9eeb650e2ef7650883f2f01ea913b8cb70fae76f5ef147bfe4b44"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-x64"
      sha256 "b71691613a7f335927c5660db738eff8177f30d2b59d828e95aaf860862124d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-arm64"
      sha256 "1c5516e926ff77e438b21da97622051d98043a5ff4dfe88f2f84e2a9cbe3c592"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-x64"
      sha256 "261291e11ffc48fbdcba7e9ae4ad947da32a4c8ca8a4090fb97c177e57cd1693"
    end
  end

  def install
    bin.install Dir["*"].first => "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
