cask "attyx" do
  version "0.1.44"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "992c34a489518019dd87ca278bacf9e18e842027d9fbc8f5bdad57053b371e67"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b4f33102680c4ebee939cac30a84d4c75f05147c2d6d73b356e492e93657fa7f"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
