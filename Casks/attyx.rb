cask "attyx" do
  version "0.1.28"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "ef87214a787b0e25b9bf1fe69d87309c0b0a213467bd2b54b35b9ea3e42bea75"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4efc471f0c26b661075eea8e278be99227f7e2a4b6646b6a307bcea929b27025"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
