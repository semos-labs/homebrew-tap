cask "attyx" do
  version "0.1.8"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "8ae3b8290bb5ae1c744d62e765bf4d1844afcf4480c07e218e3bfab1570a91f7"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "9480543f2944c147773734a24b22fa0b0083914bc97f1fdb3b8ad669aa4b2545"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
