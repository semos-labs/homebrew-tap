cask "attyx" do
  version "0.1.34"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "0b65c9785a944da1ee7a7dc42a980db8a132dd85d4f17ac748f26a9a12ae80a5"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "52ad10577e0649af2dfa91aaf30b1148cc3ab8f554d57c76e8e2889a4cb2c57a"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
