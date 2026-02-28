cask "attyx" do
  version "0.1.35"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "404ab2c2265fd31e16ec69878fa39b4ad712c6d0de0836b3d54adbf1cbd02e5a"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "2a1d235f9474feb0640a933d65804d6b087c399a94f03c1452200b77d42f1148"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
