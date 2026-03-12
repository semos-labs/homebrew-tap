cask "attyx" do
  version "0.2.41"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "4d1da48524ca1bd6a68742817ef2ffac4a3c6491be3b29b3fcbd88aa3cc7e2e3"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "73a813b977f6e188f6894b6df6c6d8477122c57a8757c73736666122e5d43abf"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
