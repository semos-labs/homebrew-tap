cask "attyx" do
  version "0.2.34"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "a5b1448efc3711c79099fd85b53697a2bf268f315fb5a17f43a0f901411e4433"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "73028a23df10d5225a23c458c82e2f8355e5413e0b8573f04f6ed479f4300b88"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
