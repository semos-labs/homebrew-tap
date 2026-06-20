cask "attyx" do
  version "0.4.9"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "9c42f92c7c2465cc1e8115b5a24d7ea9540ad55cad2cac093d36a01b1dd20ec9"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "ff2eb67f32f26909ac9d6175c024a9ec417056e178da038329b795ec8a708346"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
