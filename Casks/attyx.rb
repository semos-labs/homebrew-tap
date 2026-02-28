cask "attyx" do
  version "0.1.31"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "f1bcc5660dff01de76064d0811764c01c663b424d97c24f718b07b2aaaa00328"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3efc0a61104c50bdd1c95ed50ecf04b8013db2ff80495bb19e7bf494f6b32f23"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
