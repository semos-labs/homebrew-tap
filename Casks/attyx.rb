cask "attyx" do
  version "0.2.42"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "a5a765ba30a92683a4a9f744201b9a9627c06f2efe68ca59302e9d78aeefafa7"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "e1bcb103f8e0906a251e5da1516c198f022cc37348cd39e335a90e915fea88e6"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
