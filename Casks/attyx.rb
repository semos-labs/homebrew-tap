cask "attyx" do
  version "0.4.14"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "35d655ca2312a5bdb34aab2e58073c503163fd562d52498a46e3a34f97ced318"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "85d6254d5eaf3655b9fdd96eded1f63e24ccad67a504e3e6c265e7b22dfb74cc"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
