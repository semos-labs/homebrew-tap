cask "attyx" do
  version "0.1.7"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "414d67a32573f5f901a13b400cb2db4cb6f0db8fefb2e8ec62bd5351f652d342"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "245c9fe0b279997ab223b9da1d221a40ccb8ad2b63cbbcca3f0e3c6d5253510c"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
