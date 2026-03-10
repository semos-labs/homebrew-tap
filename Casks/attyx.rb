cask "attyx" do
  version "0.2.30"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "f9ddc2886b6b375d75dd730da5957186f44bd2bc3e446764fc16369646bd3539"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "0ee79a17b5c25b448b2ca31a009d128373048dfb37cd5fe04280cc9c088c4424"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
