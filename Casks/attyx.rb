cask "attyx" do
  version "0.2.27"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b6dd67991fee0dc3b80d1c5e94839cfc0d89f5a60b36932cae2625c6c4306cd2"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "e984d3102c115d33c1742bf3e33751eb0f9d791d6fa96d93dc5834143c5ef622"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
