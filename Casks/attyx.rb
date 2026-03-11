cask "attyx" do
  version "0.2.32"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "51214298957370561170141bf53514587ffca3154f5b9c8937e0d8ffc4c03f60"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "fe2cd8f20a0652e7c26b75444a251e2c90b616531599af97f55b831c72221d8b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
