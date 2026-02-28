cask "attyx" do
  version "0.1.32"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "a12d8e7b6a8014916ee7185a0eafff3a95c9543e0dc6612f86c809f34b3f5a2b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "a44975eed6c29ac0c66057396fd60927701313a8069307a60f8573a456b055cd"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
