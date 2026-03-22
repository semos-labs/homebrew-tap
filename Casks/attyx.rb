cask "attyx" do
  version "0.3.1"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "119a796f811d88457abd455b369382c14d381bb501c160ccd3173a491997de82"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "9a3365f2c07857619fea1b4dda3660691cb2e7f51c5f0c9212ab261d0de1262e"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
