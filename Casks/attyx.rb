cask "attyx" do
  version "0.2.12"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "6ed8a51d66fe44aa6544b2781fe5b82b67e1506180a13ebedafe2008b8ddd4e8"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "906e361cc360a1011e8a55f60cf24ce9a68047dda278ce928431782924adfb3f"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
