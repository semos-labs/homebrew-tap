cask "attyx" do
  version "0.2.17"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "817542d22f1f535a2a7736c382dca69af1dfa2ed90a8e96ad0603570cf13c30e"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3acb8c144cf539b244b8f80dd9d3c59471c67b398c5f2857be26975d2ebfb161"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
