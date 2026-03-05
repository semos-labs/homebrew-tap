cask "attyx" do
  version "0.2.2"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "06c489e3d0c7a63f12626acdba63a4c89e9d9a7438ca43521e215be9f4a69b90"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4d6a9a1207562adda2c63fb7b4dee138f95452a3a1f6adad71cae96adcd1401e"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
