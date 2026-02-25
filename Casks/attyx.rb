cask "attyx" do
  version "0.1.5"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "891e02c4432ef631450974f937f8a50be953cbe7288bfa7e1f85d987ef1ecf43"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3304f80bd55c5ccd16725a203da9188a77cf7b79864f3683452cd22366a03b18"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
