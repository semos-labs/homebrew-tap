cask "attyx" do
  version "0.1.36"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "ce34e91ddc06c2670cfcd77189aaf7c5e406adce615c62add5819384f7182422"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b824f5e0db9719c29dfa6a04d6b74b576326069d206df5329d2c7dcc5a6bf2c5"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
