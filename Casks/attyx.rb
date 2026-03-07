cask "attyx" do
  version "0.2.16"

  on_arm do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-arm64.zip"
    sha256 "9912f788a7dba9950607a2becee350c2cef3756175e8a1642511ffc4545617b7"
  end
  on_intel do
    url "https://github.com/semos-labs/attyx/releases/download/v#{version}/attyx-darwin-x64.zip"
    sha256 "c47622932da5e66bc2b502bd787530c731a8d7d9f579fc407ad30d98c72b6c23"
  end

  name "Attyx"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/semos-labs/attyx"

  app "Attyx.app"

  zap trash: ["~/.config/attyx"]
end
