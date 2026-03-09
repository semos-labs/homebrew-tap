cask "attyx" do
  version "0.2.23"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b2ebc5c124d4b9803535ccc6b89cd63e5a086cd194d628e241bc7e8f5ef96ed3"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "55bc132da55fdee0a4f99e554920c2c7c5b8f3316449fb742cf5d494b0722da1"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
