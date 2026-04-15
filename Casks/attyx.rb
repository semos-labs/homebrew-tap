cask "attyx" do
  version "0.3.15"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "dfebc14a4d80562e92632b2ff071de65525f4a8b8407c79a4e66132cd4383c83"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4056bc36764f636b071d119af25e83de8e11b7a7cd512d65ce1a11ea0c5cf416"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
