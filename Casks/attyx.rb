cask "attyx" do
  version "0.1.45"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "cb2e4b09cc7cb8b7ee1c70a811fa228450fff9a50be2c86d2f8e80a002711994"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "05e46fca2a88a948e854512e93766d96661eecd77e1c0a50a4352eaa1dd9fc1a"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
