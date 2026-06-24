cask "attyx" do
  version "0.4.11"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "831fb0c81768d6649de854882b8f522f3c605e660a43a4e71d4d5c520598609b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "10101770038bf5f5cc2c9290fe7746810e3aeee2a3940da21f576b2ffa4e008b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
