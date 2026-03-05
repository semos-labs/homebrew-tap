cask "attyx" do
  version "0.2.9"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "d00a7813ab2f4df80789d8a14ef485a44e255dc0ea352876d933d1d77d1e8526"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "6c02ae930e5cf0f995603148de32cf40e6a3441c56544145b7852edca214c615"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
