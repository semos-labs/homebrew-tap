cask "attyx" do
  version "0.3.11"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "da24818461ae27d5caf97675968143b23df0a8dcd3260e3a33010b7a9c94d666"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "163c2540d11e90cd54a7191fd6c8b394ceaf88aaa1ed0f6fc2b7460fcab52cb1"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
