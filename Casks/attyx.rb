cask "attyx" do
  version "0.2.36"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "c509e7aa2d0672b4ff33e0d059404cdb9a9b9efd7dae14b390cfd02a200c02e0"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "ea7e1677a24ae28f05f7f3a4fc82fdfad0be09fb7e1e39c7c8f55de3f143a73d"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
