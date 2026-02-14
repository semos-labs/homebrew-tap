class Aion < Formula
  desc "Terminal calendar client with vim-style keybindings"
  homepage "https://github.com/semos-labs/aion"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-arm64"
      sha256 "bf6d17994d7ab929a3c2b30a7ee5be631c82ca8ab4ecf972f07fd5feec0c8a7b"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-darwin-x64"
      sha256 "01edbdd659943f26caf0a9c93e8153a7f2c5240415b5c0f553144490bf5c34e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-arm64"
      sha256 "0d990ac51002dccdcba45f29e72aaec821b55042c7167e5accee7b3b6da1f117"
    end
    on_intel do
      url "https://github.com/semos-labs/aion/releases/download/v#{version}/aion-linux-x64"
      sha256 "c131c07fc9a756de491386bd2a123941470771ea4481f4ae8f3b5daf75830b34"
    end
  end

  def install
    bin.install Dir["*"].first => "aion"
  end

  test do
    assert_predicate bin/"aion", :executable?
  end
end
