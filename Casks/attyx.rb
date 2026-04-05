cask "attyx" do
  version "0.3.8"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "78f47227b84a86cd7c833f6f2dbc714733f7b4b6a24ff32a1ea103741751aab0"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "3018f5b72d0436eab0fbbb267ca9151485c5d85ef5f3d4e2d9bc34e3105823ae"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
