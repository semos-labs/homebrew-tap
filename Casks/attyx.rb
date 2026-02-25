cask "attyx" do
  version "0.0.9"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "a918d84741d7392efb9d2da8951b37f3ed2cfa7a846beb65d724cdf87a88b8ba"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4a69720313945204087dedad7b5e59006b6cb302a052f71dce8c56cdb0a95a8d"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
