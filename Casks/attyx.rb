cask "attyx" do
  version "0.2.13"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "80240382091a69778b01bfb4f6276466e7393e5f66ce15171b123f42185369cf"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "5ea1e1d2b04dc16a18ade915f2195ba1eaecd535d40cad0e047f5cb90a221b55"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
