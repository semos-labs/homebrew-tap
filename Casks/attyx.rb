cask "attyx" do
  version "0.1.11"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "02871d3822a6b68ade0f6160a7e90b7abb6ac44e9f90fbf7c7e0e650069216f1"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "d53da203443d11c3d90156c22097d9905f6f7dd4ff2109545727434dbbf2c3e6"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
