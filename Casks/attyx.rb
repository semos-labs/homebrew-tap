cask "attyx" do
  version "0.3.5"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b192ef934e5ded66cb98c6ee60ec44b6e6c472c2e79e6f208044f7a8b06aaa11"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "23e11ccf4637ae2dbc3b129196a60822fd32a036a03b9d4449ab6594860522ec"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
