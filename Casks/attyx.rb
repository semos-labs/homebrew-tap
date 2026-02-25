cask "attyx" do
  version "0.0.6"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "bb35e6b2c4230e3fd4558da9ff24f8f96e54aa378ab8b94aff9b8d46e1acab66"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "8039b33a9d3969ab021de1e38d082372cb2f4750ee4027d00ccafccab7627fc8"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
