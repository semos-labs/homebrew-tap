cask "attyx" do
  version "0.1.39"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "2ceb50289cb410ab009ab366bbcb7b008f3cdfcaa12b421c933c7fd29e279665"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "51aae2073ffca02539393a6a6b591379fd957e50a0bf970d809e6e07f71855bd"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
