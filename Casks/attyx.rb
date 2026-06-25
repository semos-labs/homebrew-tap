cask "attyx" do
  version "0.4.12"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "24d5239fad5999bef8b1856dc6e2fb795d96bb34eca9a402ff7ef803157dc3f1"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "e05a627c4c89988f850d025b9c9d4bd7f944de6a66d7fc69edc785268ebc72a1"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
