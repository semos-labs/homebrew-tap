cask "attyx" do
  version "0.1.10"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "d5c3d9c8c62b534560227d469dd19735e41df887b8ff145de9e030335e28597a"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b3c4981696c5247dfc7afbe0d106bca352a76b79d9cd5872bbb694f20421d3ae"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
