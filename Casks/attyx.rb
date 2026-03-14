cask "attyx" do
  version "0.2.44"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "36e1b427b1b6afd6ba9ecebe4c01fadcdf6ea13bbdb4fbabf057393086b4164a"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "0e255b74d1c94b29a623a1daa0b067fcff9328b86f9783b84e19f5b653f7f175"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
