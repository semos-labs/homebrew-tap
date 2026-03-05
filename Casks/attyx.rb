cask "attyx" do
  version "0.2.8"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "e38c3f52ad8bf8ab2f54247f8a8dfebd62cc8a6e3837e9c293287fbd092a235b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "96ff252c85717195872237d61f1d75746672cc09368062cec079a5cc5619a645"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
