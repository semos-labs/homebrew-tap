class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/semos-labs/aion"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-arm64"
      sha256 "7de46942d14a3434b8cde97465f757022011889445c6f8e661a2cc6cba32f81a"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-x64"
      sha256 "b73371e52e2093ad4801518019cca1f1b8b69764af69c223880ca70d67fbf04e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-arm64"
      sha256 "cdb8667de73c531b1c33e0098a87212870b1c3a6a47fc6a3b984c31e993950af"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-x64"
      sha256 "caf65f44e722c9e46b2cc40cf8d58089f4067d5d47e936a65c749c061d48057b"
    end
  end

  def install
    bin.install Dir["*"].first => "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
