cask "attyx" do
  version "0.4.2"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "9fbb839ea1b5660ece4611a96818ead6b3885c1f16e55d0ac3c93e56e9b9e24b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "09137615e7d9155f3c15c1167f16f8e301070dff07a7d6728a63b026b7d817c1"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
