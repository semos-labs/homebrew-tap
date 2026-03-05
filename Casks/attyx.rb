cask "attyx" do
  version "0.2.5"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "d28ed34148bdffb61f227843291815c5c12b0349a89966384413820ec11bc05b"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "22fa0340e35cd7eb4e66733a9a6098c8d286aa20055b634365b709befd24fffd"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
