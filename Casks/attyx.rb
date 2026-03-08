cask "attyx" do
  version "0.2.22"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "75f0a7c33bc9625fc79895e5b88bfb6038afcd9b968ff1830b15ff0544d3886f"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "f98e9b2b083a04450279d6980e9ccf5dcf6fd95f3bcc6c90ae4499f0acf405db"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
