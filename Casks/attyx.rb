cask "attyx" do
  version "0.4.15"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "ff094aceb0af87e12d10e707da096e49b16fb3b44f8980535e6ae058585be7dc"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "2daedca20464dd5b418ca5d4f5614bc276294b2e160bff1b991b9bc541833e04"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
