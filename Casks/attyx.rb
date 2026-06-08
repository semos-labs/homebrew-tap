cask "attyx" do
  version "0.4.5"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "03ca5459ffad2c883683cda4c21af7005306219ccd5b29edcd2abc59adb1ddcc"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "9ee60b6bc1bf03bef5fb85894f5a280444cba1ebc21d90b5632ef6bda3acadc9"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
