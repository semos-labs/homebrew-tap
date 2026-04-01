cask "attyx" do
  version "0.3.6"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "20e5eb1b1d06cee9d976a40d319c123d905157fada42780874e7827bd487486f"
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
