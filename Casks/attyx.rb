cask "attyx" do
  version "0.2.11"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "20dbd137138c4f67a48f1659dfe2bc91c9a43d7658d45726c79e54b9ab5f367b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "44b6123b1fc5306400dacac7517f6f14963c0ae8a805996b5d2140e719478056"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
