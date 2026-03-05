class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.2.3"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "939e20bc11b0bf3eb5a8d79c419e7aac97abb5660d7530314848c1f15f3b783d"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "2b549391d9021d47dad71c161abc8ea656245f9c8d3783172a4c645a6c308c1c"
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
