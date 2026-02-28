cask "attyx" do
  version "0.1.22"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "06f51e6bd44afbf6c745faa002985b6d12ab5415de903c2232e8063a83d077ad"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "488c63120bf82161073a43a95ea073b66876b3ff6e5d48375c1e31133fd7ce18"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
