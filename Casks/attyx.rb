cask "attyx" do
  version "0.4.4"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "27023eac08c9772e91174b3a059bf71d9afc589a8cd63bcc9e3a161e69658e98"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "0aba25353cb8507532a27fb63455e714851f97f296f0d7fae5841bbfbf44de0a"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
