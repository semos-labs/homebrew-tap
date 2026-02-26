cask "attyx" do
  version "0.1.13"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "7577d16f4d29105a6aabd3b3ead2748d579ef0aba1947bd9c6a4046e570f8b56"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "816d93f24640164daaf02ddef08f08623f7242e83c8de18cf733a97e57d2ea61"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
