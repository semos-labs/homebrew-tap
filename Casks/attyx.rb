cask "attyx" do
  version "0.1.33"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "04c93ce40ac1bcb9ed2b2b94ba1692d1c714dbcb227e040f7b1b9c613f2e02aa"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "88c1c406fb268aa7da78496b8cecb67a00d81e2fb1a7b48a2e73291091d3cbee"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
