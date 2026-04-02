cask "attyx" do
  version "0.3.7"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "18b7053edfeea8dfd503378c6152ca42ed1aca29195373fde4ef846f583264cb"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b1cd61a7bbb317633da3f79c38a0a202c5b73ca8674e2ea3377ec77298cd81f9"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
