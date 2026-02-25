cask "attyx" do
  version "0.0.7"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "bc7243afc69eca1186dd16e76402835e7d38f41e43ff03ef667d4bb4526a1b0b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b885254b79f3733cd6f0d81945ef83fa58667050e88f630f8f3c813f1e048338"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
