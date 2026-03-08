cask "attyx" do
  version "0.2.20"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "6d4911b01be9f50c165ca61669493bf71851be780869d4b6ccb25af2d88f2298"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3ffd212ef80b647f01764448681dc9d15d32036773dc60750d640b1c2fc7022e"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
