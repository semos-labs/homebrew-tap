cask "attyx" do
  version "0.3.6"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "20e5eb1b1d06cee9d976a40d319c123d905157fada42780874e7827bd487486f"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "144fa16c6c238635c8795193daf72b2b183bb7767c662813c5f4a900d7c62ebd"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
