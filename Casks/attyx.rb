cask "attyx" do
  version "0.2.29"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "9b9b73958b383baab697545905a7280c6a93d9f216fceda665f22adc9987d3ff"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "516f94521e207275f8dfd42a3434fca197436d5309bb361fbe86fa7dd8e71052"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
