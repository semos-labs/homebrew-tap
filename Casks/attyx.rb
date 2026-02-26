cask "attyx" do
  version "0.1.17"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "7b42e883440aed572409770750e85ee359b80cd2c3be70cf22d0306d497c1e8e"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "79993ccc7e50e0fdf2052e33d7e1f92a9039e4e149edf53917dd7c0ea018644b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
