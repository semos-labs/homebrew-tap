cask "attyx" do
  version "0.2.25"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b6d0d05f5d1f9544464530db9303d840f1709686eb666d7b09c6b9749411a4be"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3d404b484a7a766b48de03e15fc9951bd4e759fc14a9e7292695b468b7a2da2e"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
