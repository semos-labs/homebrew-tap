cask "attyx" do
  version "0.2.35"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "2dae8eb9496ffd536b10d7bb34cd4669cd0c324b57fd6fc2b878b86bc2c47c47"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "1ba76a4774a27642399b48ecef4336e6dd6a95f193c201a09ccb2ce996611cc2"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
