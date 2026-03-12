cask "attyx" do
  version "0.2.37"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "501eee62c6672f7373cb15422e0872703a2df5cf646602113f9a124e39eae42c"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "4252ba7753180dd761824b29194a696d6f08245e76e52d92fba7c538f8808852"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
