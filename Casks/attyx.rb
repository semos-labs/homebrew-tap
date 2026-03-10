cask "attyx" do
  version "0.2.31"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "88c8d63182fef82ebac8e06169d5e3b686af05831b91bd87ec029695fe89a202"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "67eebe6584306df8dc132a539372f562497e461745d5a5520b377145c74ac248"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
