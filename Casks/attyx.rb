cask "attyx" do
  version "0.1.37"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "88f20bdeffc60bf46e71448178498051d800fe85381f8c25016468298c1ceb98"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "6af649fd1063b4c7940e67c38808b99b48d7194bb9fc4349e48a67da1a12f502"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
