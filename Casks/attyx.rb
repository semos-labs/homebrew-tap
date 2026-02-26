cask "attyx" do
  version "0.1.12-rc2"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "18a63e5754b409ee1d99aea97cdafd75aa9cfd951389e9aa20c3fe311ae63247"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3a84a7c8d21f90a5c788b60bb8ea1a9708c233ee0da86b8114d32de7f9598ab5"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
