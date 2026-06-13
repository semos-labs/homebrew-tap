cask "attyx" do
  version "0.4.7"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "cc72b9a5dbb8a02c44e5e8139c37e2385f66ec5d6797d824e496e2de4194218d"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "de3f9a7a97b4a828c1b65593248140db0ce4aed6a374e7089f09fb4092920dc6"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
