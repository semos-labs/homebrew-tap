cask "attyx" do
  version "0.4.13"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "fd320881863d0718286876e255cbcca4535dee4b1e63b84d89b117c169e17ee4"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "a044011412bd442922d6ae1b32dc14f1c92f4ddb9f4e270affba37069c022572"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
