cask "iotdb-desktop" do
  version "0.1.0"
  sha256 "b1f2932e293d4476c928539eca7cbf7c0c8e24d2c50309c46638feabc1d8fe5e"

  url "https://github.com/jamestao83/iotdb-desktop/releases/download/v#{version}/IoTDB-Desktop-v#{version}-macOS.dmg"
  name "IoTDB Desktop"
  desc "A desktop client for Apache IoTDB"
  homepage "https://github.com/jamestao83/iotdb-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "IoTDB Desktop.app"

  zap trash: [
    "~/Library/Application Support/iotdb-desktop",
    "~/Library/Application Support/IoTDB Desktop"
  ]
end