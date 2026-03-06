cask "attyx" do
  version "0.2.14"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b6a493ca3f419b78a350aa0f3b28938351ef7b22278aee053a7b0b5b190a067d"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "1f520c1b61b2fcbac68129e159ecf87e64d05e7dfe4c23f383d9c3dee74f0d61"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
