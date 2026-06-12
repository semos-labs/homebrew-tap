cask "attyx" do
  version "0.4.6"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "d8a0cdc115a7a08a5cdc38f66667121a83c4e53465f936c586331b9785295e00"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "7c047169dbe54bc560ffa1a3cc0d24cb6c08f4eb8884c688b4b3254a1b013cf0"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
