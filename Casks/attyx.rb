cask "attyx" do
  version "0.2.19"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "9f9e85a0615bc30eeb89cf46f09474a9cb3b10df11fd157a67083b56453d6c1c"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "41c8ba5bfebe5a50db1894fdf00cd69cde9ffa0f5606d7a97411834a06fd201d"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
