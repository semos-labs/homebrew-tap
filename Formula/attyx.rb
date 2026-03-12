class Attyx < Formula
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"
  version "0.2.42"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-x64.tar.zst"
      sha256 "f970c93e64d284004b97f2ecb85ae6ac7ca4d8bc26ad810239271eb4c53babae"
    end
    on_arm do
      url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-linux-arm64.tar.zst"
      sha256 "090bbca0194ac80a6cba542263381782cec49dacbbab89dcf665165185abb7cb"
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
