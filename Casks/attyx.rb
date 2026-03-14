cask "attyx" do
  version "0.2.45"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "89e869a235d5855c6aa13b11c5e0f5efdee094e0b5ca9b6a260c7b6d28548c60"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "9e09697d28176d15d947705fbfbe8a79ffa7fac8c47d3aa25436d3929a9c204c"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
