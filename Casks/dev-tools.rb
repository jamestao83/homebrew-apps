cask "dev-tools" do
  version "0.1.0"
  sha256 "0b4e4407db30ee09a35e61091d8e5a9a9660ebfd3b1df604788ad9d6f5263b7c"

  url "https://github.com/jamestao83/dev-tools/releases/download/v#{version}/Dev-Tools-v#{version}-macOS.dmg"
  name "Dev Tools"
  desc "A collection of development tools for developers"
  homepage "https://github.com/jamestao83/dev-tools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Dev Tools.app"

  zap trash: [
    "~/Library/Application Support/dev-tools",
    "~/Library/Application Support/Dev Tools"
  ]
end