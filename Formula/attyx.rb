class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.2.15"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "9631ce93db475fdd3a0f442f0b83bb499588c5d318e12a0191b9541c92220ff5"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "88a5c5f4c30162096c45c62ba43185b3cebf4ca2853b7573fbb67c6aea0d0a3d"
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

    # Write .desktop with absolute path so app launchers find the binary
    desktop = "#{user_apps}/attyx.desktop"
    File.write(desktop, "[Desktop Entry]\n" \
      "Name=Attyx\n" \
      "Comment=GPU-accelerated terminal emulator\n" \
      "Exec=#{bin}/attyx\n" \
      "Icon=#{share}/icons/hicolor/256x256/apps/attyx.png\n" \
      "Type=Application\n" \
      "Categories=System;TerminalEmulator;\n" \
      "Terminal=false\n" \
      "StartupWMClass=attyx\n")

    user_icons = "#{ENV["HOME"]}/.local/share/icons/hicolor/256x256/apps"
    mkdir_p user_icons
    ln_sf "#{share}/icons/hicolor/256x256/apps/attyx.png", "#{user_icons}/attyx.png"
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
