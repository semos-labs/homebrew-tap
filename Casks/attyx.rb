cask "attyx" do
  version "0.1.16"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "275963994f943b49623cbaffa2ad9ef64c8bfa0a7a0e36a4f9137ba7f746dac6"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "8de66cd78bb20aa01c0c0a454928d0b60935470ad3658c2dda2d93756455f5ec"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
