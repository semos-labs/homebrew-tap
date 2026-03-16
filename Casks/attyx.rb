cask "attyx" do
  version "0.2.46"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "bd374b5bae8ab66e16b73068c5bbbf230b8e80c3bc2d1e69ab11f7e110a77ce9"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "ffb3c0a4812f88fd5a3216815e377e10669204203d238ecc9174babb8be1969a"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
