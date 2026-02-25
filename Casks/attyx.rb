cask "attyx" do
  version "0.0.4"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b6dd2202b18d4b31c1402bf375ab0b44f0b600625ee6ec0f6ea87d9ecc415099"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "8cebeed0fce4ffa5450bbed1b1d07cc228981d24c5f00600d93a1b152a3f08bb"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
