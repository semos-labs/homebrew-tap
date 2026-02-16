class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/semos-labs/aion"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-arm64"
      sha256 "b4fafbc09f13bb6b1c9ef120438cdbd7b44233f02a15af1e4a48525ef6860994"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-x64"
      sha256 "45ba46e12ad1205dfae825ae3b208ab87f018f19f52adab269fef064addef535"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-arm64"
      sha256 "662c5efbcdb12e94bae3c4ee96b86b0c58d670e78f8c67ce65651bb6c8b4c3c7"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-x64"
      sha256 "0819c00585e4a78bc8e60453a215fb80023d3fad75a4fb4e73b0bc35c31034bb"
    end
  end

  def install
    bin.install Dir["*"].first => "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
