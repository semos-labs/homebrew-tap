cask "attyx" do
  version "0.3.13"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "c59ceba1cb7124dbdbd995f4028fa938373e0f2a0e2ae99cd4a84e03a43264c1"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "cb7e24003b83ce904ef793aa5df5a8165d63e4e337f672162f022903e0269035"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
