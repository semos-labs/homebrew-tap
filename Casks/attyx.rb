cask "attyx" do
  version "0.3.4"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "f20a1a9f2cac53e252255f527d27215fee47d42b515cd5ab814dc1760d5cbc66"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "698727857a1e5437b2621cc7ae62def1c3afb203f0561d0e2aa87a52620c63a5"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
