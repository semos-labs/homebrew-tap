cask "attyx" do
  version "0.1.12"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "f9bb3f686307a02e53fba733132516d2b49ce46e417b37abc5a9cef2d0532e95"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "99498c9a2960633bc8d81bb29375879d9a68dde380846ed752f72421612841a8"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
