cask "attyx" do
  version "0.2.28"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "8935249ecaf37a832efa97a2f71e189af0b03e81f50826313c40e9c5c96818f9"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "dd20f59fe00b3ea40db62eed10778d2d62747c29cacc5f513c6451bf811e88e2"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
