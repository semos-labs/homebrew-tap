cask "attyx" do
  version "0.4.0"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "e890cadbabc408af567e689a58c307e0267daf5dd81c97a1418bc43cdb70c989"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "49d355c4d94a658c7ec96504274f9a4f790a34e39dac6fe8fc0556abb093fb01"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
