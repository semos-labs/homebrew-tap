cask "attyx" do
  version "0.2.21"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "13a6249aa594975db7f088963f93d82a5bb650a5ea2f464b40a940365f9c89c0"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "b617fd35a12d8b8ae7e85a8c7bbbf8d04c32c850fe378cd449b5fb556eeb8b6b"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
