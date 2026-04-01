cask "attyx" do
  version "0.3.6"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "144fa16c6c238635c8795193daf72b2b183bb7767c662813c5f4a900d7c62ebd"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "19079dbb05fbe031c78c3e2b905b9f72fec256ca9ca59b15e73fccc3c028a85c"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
