cask "attyx" do
  version "0.1.18"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "4def949284d3dac07c93104c4409729cdc59892ce281218a753340b3b662ffce"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "66393f3f148b4770f802b3ed51634ace6dd96b6e387e6dbbc8a3307ad503a2f1"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
