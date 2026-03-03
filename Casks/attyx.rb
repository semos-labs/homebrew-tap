cask "attyx" do
  version "0.1.42"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "f3a3d6429c4bb282933916ff40e2b73387e432d8c7c628100c2ae35af3fc208e"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b024b8e43e9f4753e3a2b8ca5ea11efaf007b8f6f2ee36679560734099fc186b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
