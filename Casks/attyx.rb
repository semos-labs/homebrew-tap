cask "attyx" do
  version "0.2.3"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "18cb45424e9c0db55d336d1ebcb435d2bf6dbe2c169033cd205e6258029259c4"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "108a23e769d9fcecdc77fdc13f62a11e3d94d0119d5214c64bbe596702f61929"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
