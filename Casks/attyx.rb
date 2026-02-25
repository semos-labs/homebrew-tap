cask "attyx" do
  version "0.1.6"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "2bd62c8370e248f0dce6fcddf977f4595c101d738530314eef7f472d2a5186ec"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3e9909b45d7c221df9c20e7cfc0da38438a7a4cd11ab614b4389a6960a9907bd"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
