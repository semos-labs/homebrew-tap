cask "attyx" do
  version "0.4.1"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "55c6ad1e86a39436748aa94af80640c74461d748dbcb1aae52b0372c610045e2"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "f9ce9edaf17dcbb0384b3db39de462de7e323ac9a3dcdebadcd0f3d7ae198259"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
