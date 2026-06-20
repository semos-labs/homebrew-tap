cask "attyx" do
  version "0.4.8"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b820a8ba2795afa86412e2203e395725e4cc4142b33c708440f6a3cb0cf17b1a"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "0a7a237df5e8226ffc6a44ae13653752119a292fd5c31097790e145683ffcb0e"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
