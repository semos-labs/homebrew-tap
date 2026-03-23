cask "attyx" do
  version "0.3.3"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "0c0e14b8e970bd6cad98758e85b35f6ab8fbb97caad9d938e4712a75585e4e27"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "a53b78be5998310d956b9be99f28b4c80622446ace4f3875295ccc8a5d7254a1"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
