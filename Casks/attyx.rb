cask "attyx" do
  version "0.2.39"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "e5ba49a65167c22646c13bec370e90858e0b4020899419e6779430dd7e6fb496"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "eea1bd980bb81284e9d222f59f7c95982faded051f7e063499c8462ea5bfd41b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
