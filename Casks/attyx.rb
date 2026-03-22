cask "attyx" do
  version "0.3.0"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "188fb3229d666efb6c883e22a6de2d15ca4eb3f46302f0d3ebb842f1654bb3e5"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "aa410945b12f0aa296313e3b13727192e3d5ed13100e7dcc09735c2d91289037"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
