cask "attyx" do
  version "0.1.0"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "43f35b1536997c7aee63d2c6f0bbe6161dae939b2fcfb4e3ecbe4781fb8d5c55"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "e5f14ae370cffaa997130588bf61522532e9711fe75656ea7a6852c3943708b0"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
