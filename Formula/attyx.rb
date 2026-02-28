class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.21"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "ccee1457dfd14cbff3d4e6999184e947cf0b6eaf860ec6d77faebed522cb197d"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "df26986368594aaf55d204aa1b18ed0dc0e75dd43e509b35b10e86784cd311e4"
    end
  end

  def install
    bin.install "attyx"
    (share/"applications").install "attyx.desktop"
    (share/"icons/hicolor/256x256/apps").install "attyx.png"
  end

  def post_install
    user_apps = "#{ENV["HOME"]}/.local/share/applications"
    mkdir_p user_apps
    ln_sf "#{share}/applications/attyx.desktop", "#{user_apps}/attyx.desktop"

    user_icons = "#{ENV["HOME"]}/.local/share/icons/hicolor/256x256/apps"
    mkdir_p user_icons
    ln_sf "#{share}/icons/hicolor/256x256/apps/attyx.png", "#{user_icons}/attyx.png"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
