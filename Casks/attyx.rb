cask "attyx" do
  version "0.1.12-rc1"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "d71477430ec9703f669e2e6fda61a7b230a4a71131f7bd0c919acd0030fe3bc4"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4c1cc37e7b9d9deaaaf00f4128d63d583914b37f67ebb7a3db41a85086dae9c3"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
