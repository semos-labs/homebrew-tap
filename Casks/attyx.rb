cask "attyx" do
  version "0.1.27"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "4190414f4bc53db5612409c22f2b58b92adba5ed38c769023681ec2904aaa3b7"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "f3a9a5c5a32fafa81e16da526f66a6d891b39df963caa7648235032b66eb853f"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
