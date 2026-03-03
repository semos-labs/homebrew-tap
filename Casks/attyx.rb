cask "attyx" do
  version "0.1.41"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "af93cffb78c213169624d0e81052877b6188839fbce18d6d99a9a4c664bfb114"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4b23564bebe775313d2fb6ded2bc1c257fde21b13262a357810f9d40b4388f03"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
