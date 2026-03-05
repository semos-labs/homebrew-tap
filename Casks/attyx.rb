cask "attyx" do
  version "0.2.10"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "4c5a7aa4665aace4ca0fe36bde195e876bf24ae3e26610698f7837350e0fb236"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "bb19d32544a317b65f526d74ba107031cad721b68edc3b0e481ce523d2b06c2f"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
