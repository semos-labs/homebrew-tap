cask "attyx" do
  version "0.4.10"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "7f094cd3de60571b4638e8180645ea69856492ce1f7ab34c769c024e7dfd5e4c"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "7e950dcae610185314b88440307860e605cb2de117491d34d001e9ebf9da6ed3"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
