cask "attyx" do
  version "0.1.9"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b1c9e55b2e282c45378fe8f6d72461463210a0e5fc44489c949c71960bb7ce42"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "dec5def016fbd4cdb85fd54d219c313a218458976226d7a1d0da88b6b139bb56"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
