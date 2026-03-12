cask "attyx" do
  version "0.2.38"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "c0c7d6bd59dce3e9bbc8d73b1df4b1f0b2473f7808feed02df3988dd20a74aa4"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b7ef9cd1664111714a7da462b7623e6de2867c05c4423e696c540316f9adfb76"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
