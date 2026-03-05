cask "attyx" do
  version "0.2.4"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "667452acff1aeba292d9e018f2d0ffadd34da66dcc8e0ccbe9e200e923274d27"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "ae0f3592b250343043fdceab77dc70893d98bdb958d726234eb3d6bab079ab19"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
