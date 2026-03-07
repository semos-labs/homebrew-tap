cask "attyx" do
  version "0.2.15"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "d5b53743c9784f18df7b9f8e0ee244a0c92b800d67f3fffe3956c3097236a9d0"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b31ad78a3ac7a5f7de5063db3036a14ed1938b78bfec14176569ec23ca92df58"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
