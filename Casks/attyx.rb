cask "attyx" do
  version "0.1.21"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "1ea7d8b1069c3b9bf177d3499cb6c53301c7793389f2c4f01f59b014603e42b8"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "09f2c205855b29b320d5adbb251f259784c3b7d933db9a06ec0a5057a8d648cb"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
