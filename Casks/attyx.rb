cask "attyx" do
  version "0.2.47"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "1c0217e1e2f5f0c2988a5f96899900ae94d48d869fad82f49a57315108f18b59"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "f9381209f39016e8d6997b0c9c0392a34274cb301a52dcb2f0d7ad20b68538c3"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
