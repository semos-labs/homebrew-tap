cask "attyx" do
  version "0.1.19"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "edcebf19823f30b05213bb9e3828f0b0551d2725784d03c97f6bd83abdaae9ab"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4f04e2ec6a91ee9c755195e69d5739fbbc232ce94b8f63d64a06d099a27f1ce7"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
