cask "attyx" do
  version "0.3.12"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "b51dfdcfbb885354273de2ff0ee0b33046867e2b8c9a00a0f323039fc05e0521"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "abafdf76616415d0e1a1bb23000f6f441717f577f992d2c74e984341ac3bd06e"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
