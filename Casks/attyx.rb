cask "attyx" do
  version "0.4.3"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "c635397dbb8f5bd35371d938f30b5fd659fdc324e776b11f8cc38fa221a6ff66"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "c9f0a40096872c185d5750db26c1521c1f435e7fbc405f6b4e829efebaa99f6a"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
