class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.3.11"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "1e8621eacc7dccf429c04a34bc9d339c45757ec4b5ef3eb974f952daf31659b0"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "263a17a3b5eaed0e5226d9a54be3849f4a1f93baf278320867c69d5ca9c381bb"
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

  test do
    assert_predicate bin/"attyx", :executable?
  end
end
