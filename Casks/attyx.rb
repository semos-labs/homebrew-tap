cask "attyx" do
  version "0.2.43"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "aa0012c428bf1641e5829a581f7c87144981a52c24dfc422edb397b80a9b55f7"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "80c81ad982d8f9be554d556ee6babc90665a2f377ab7d5ffa1f1e20696f3f1b8"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
