class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.1.20"
  license "MIT"

  depends_on :linux

  on_linux do
    depends_on "glfw"
    depends_on "fontconfig"

    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "19999affa787a169580b608e65f2cac2b17387b2b7e16d60c3804df30fb04fff"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "4145a6ed2d1fdb745ad5c52d3933f5456244c0e491fcee8aa9f3912a7807e30a"
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
