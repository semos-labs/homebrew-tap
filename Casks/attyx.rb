cask "attyx" do
  version "0.1.26"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "3463154872c6b6969277dfa4c05a82ca910f41d49858b32c739e36c4d14dee3f"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "eb753ecd1c403bf1e863f11615fc2d672bcce96f41a0601fdc6f8d7775f5a27b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
