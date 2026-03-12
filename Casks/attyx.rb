cask "attyx" do
  version "0.2.40"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "811ef9f077d0e9b8dae1f1a84ff40808d640e667341de744964c7bfe9edecfd9"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "1193cea0adeb54221c45ab43415765075e466cf3ece2228469aec99cb69c5383"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
