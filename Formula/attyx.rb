class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.3.7"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "9dc7269be7e5512da5d93ba0e9e2f2fcef4cfc70ed0d225bb3d6160c0e770aca"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "3e068753f13d915fc163faf704fff332f7fdb523020aec1336fa4f7fb1cf7a33"
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

    # Refresh desktop/icon caches so the app appears without relog
    system "update-desktop-database", user_apps rescue nil
    system "gtk-update-icon-cache", "-f", "-t", "#{ENV["HOME"]}/.local/share/icons/hicolor" rescue nil
  end

  def caveats
    <<~EOS
      To remove desktop integration files after uninstalling, run:
        rm -f ~/.local/share/applications/attyx.desktop
        rm -f ~/.local/share/icons/hicolor/256x256/apps/attyx.png
    EOS
  end

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
