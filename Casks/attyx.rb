cask "attyx" do
  version "0.1.38"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "7f9aef7b6919c8c7694c0eb0d9ea3bdfa50924c2c77af1dd78431ef6c9d89354"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "0c42fb10cd1a81ed515d75a7195c27e25bb9288c0d8317f16f07bfc656fa31ac"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
