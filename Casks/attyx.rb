cask "attyx" do
  version "0.3.14"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "e47fb37f924d95d310a073ebdd8659c57cb498ac555121fa9815e0bb916f0283"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "cd90625d85c153d45f52eb7d7805bf54981303c96f0001828b98ed4c1b204de5"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
