cask "attyx" do
  version "0.1.14"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "f8d2815ab22470983332cf7c77309991d0b31703b055b45a95a89adc52301c41"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "5eda1bd6acef333303f0081c615fc56eafe4e7551fe0dc1012ada98d97933ed1"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
