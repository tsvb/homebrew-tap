cask "flatlink-app" do
  version "1.1.1"
  sha256 "d8cb3d15489b763a235e946a7fda9236916f726985e042cd1e4c87665ef6437a"

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
