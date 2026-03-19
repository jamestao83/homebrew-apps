cask "tiny-rdm" do
  version "1.2.7"
  sha256 "aaebc58a1f97505743bf05f2ab1cfc5e7c3e5841d90266ad836eaab74435f1a3"

  url "https://github.com/tiny-craft/tiny-rdm/releases/download/v#{version}/TinyRDM_#{version}_mac_arm64.dmg"
  name "Tiny RDM"
  desc "Tiny Redis Desktop Manager"
  homepage "https://github.com/tiny-craft/tiny-rdm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Tiny RDM.app"

  zap trash: [
  ]
end