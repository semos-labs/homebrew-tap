cask "attyx" do
  version "0.1.40"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "4f70e264b5a5a66fec63a188bf84e9e9dbc6b13be7e68b846b896463139762db"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "7d15594ee3e8e6febef65dffd1edf62338825cdc9fbce91c13d3872ac9a8cbcb"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
