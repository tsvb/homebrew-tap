cask "flatlink-app" do
  version "1.1.3"
  sha256 "7367e1adb9c1c193f83ac9f8ddcf1fe698e8cf9b16aab547e46d971ca2824fc9"

  url "https://github.com/tsvb/flatlink/releases/download/v#{version}/flatlink-app-#{version}-macos.zip"
  name "Flatlink"
  desc "Keeps a flat folder of photo links up to date for DxO PhotoLab"
  homepage "https://github.com/tsvb/flatlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Flatlink.app"

  # It may be running in the background, watching photo folders.
  uninstall quit: "com.tsvb.Flatlink"

  zap trash: "~/Library/Preferences/com.tsvb.Flatlink.plist"
end
