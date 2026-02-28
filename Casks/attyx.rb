cask "attyx" do
  version "0.1.30"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "2d5f1f0598f73a0dcad8190e74bf8afe242d80484cf3936fd20ef9de0be9d1b7"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "e4d4353539e9fa92f2a0952473ca3201343e665474c0a3fd3d55b8619d8a7f21"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
