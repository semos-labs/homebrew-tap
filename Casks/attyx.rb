cask "attyx" do
  version "0.2.18"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "bace2c94e582869932ea81ff3dfb076c5e6b39faf5ef596c8b1ed37bfd3de783"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4f45af42cb3ba803be37b5b35f89e30180ca950b7c47a3e770feb97a73007e05"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
