cask "attyx" do
  version "0.2.24"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "49675fb9927d021834d9ebd877b154fe21e4b74f8c48c2c809d98e8178908ed9"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "121f930c1f6903e4e807ecf7d5acfb710976cb96e164a8e9f1de1fcff3dae870"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
