cask "attyx" do
  version "0.3.9"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b4873fa234c5c40e6a11271d070c408d43db5914bddad74941ef9b0a2cdd59cf"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "903d9ae26f92b7422af0564c64d32d7178ab5697f2172bf03f346df95bacbc9f"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
