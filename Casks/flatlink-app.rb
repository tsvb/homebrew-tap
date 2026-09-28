cask "flatlink-app" do
  version "1.1.2"
  sha256 "24aed7fe9bbd022dc9e116b37fa02507928b8bd5a8f6b95041b782a3edcb3898"

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
