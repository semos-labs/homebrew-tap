cask "attyx" do
  version "0.1.15"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "5fc78a29a8f7065ff342dd406dcb67ac5083e5dca4f1389160c0b10b796a088e"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b734cfee6e7e9aa0d55ac9d5f838d0a9b8664e25bed1ac5edbc4296ccab5e70e"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
