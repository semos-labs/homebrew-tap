cask "attyx" do
  version "0.3.2"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "aa7028ccf1daa6055d799fce41080c22b3d9c841bea970ba434f1d64c6874c0b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "86df96e4553fd00f12846442d94cd6ee66544af89a6042f5b33591e71ce64786"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
