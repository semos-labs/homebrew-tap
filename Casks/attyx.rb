cask "attyx" do
  version "0.1.43"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "e49c8413fddf5915df38d2f3a5cb905fefab496bf648089f44eeb28e1b1b0076"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "01d08ac4365011434e91fa1b01ff54983e1dd48fc1dd0755d05c04c672a6036b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
