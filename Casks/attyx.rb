cask "attyx" do
  version "0.2.33"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "70e3b5ee9074759b1ba13a74632100ac8ead85b8af77846a40e0134eca1d0d30"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "e28f76fb2475b498edad13bcb9d26b6182a1bc329fb3d4f1563ed185b3f85987"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
