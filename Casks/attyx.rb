cask "attyx" do
  version "0.2.1"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "2fbdd49510c9c30ac4c52b32020a1b17359de913bf57bfbdead603d1bca452d6"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "e2a1074b75af345a102d6a4eaa77429b154d7e7292909c4d498eaca1bfc0768d"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
