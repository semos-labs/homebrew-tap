class Epist < Formula
  desc "Terminal email client with vim-style keybindings"
  homepage "https://github.com/semos-labs/epist"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-arm64.tar.zst"
      sha256 "0927253189f82d68e79e77e4bc1e0d1183cd28caaa2f0ac0809936ca00c1b84a"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-darwin-x64.tar.zst"
      sha256 "4fea250538305dd6669cd03935b177c042b25747b6701e2babdbd065450b42b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-arm64.tar.zst"
      sha256 "c62c2414773d1ad11ddc82eeea20d595ffdabff2db0fbca04df630eac988b57e"
    end
    on_intel do
      url "https://github.com/semos-labs/epist/releases/download/v#{version}/epist-linux-x64.tar.zst"
      sha256 "cdacc7815fe56e8b03f88dcdc10d3a7c107498d74296c8cb4ed5a82b3ea32ed9"
    end
  end

  def install
    bin.install "epist"
  end

  test do
    assert_predicate bin/"epist", :executable?
  end
end
