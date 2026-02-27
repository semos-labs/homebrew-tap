cask "attyx" do
  version "0.1.20"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "6428a0c355f345995a2cbb6702d2a549173a19d222ab862076750240fa148b6c"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "c749059ac862a2b13fce1ea757c97e8c52e3530d39a6ed22bb620d5ad6121043"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
