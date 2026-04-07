cask "attyx" do
  version "0.3.10"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "a8dc7334b54aa6fb1e58315179083f57b01ef283ec973cae7fc9a1a88422b82d"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b8dbaeec595701e52166723020f6a3e42751886e60e8f45da4554aeeeee69051"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
