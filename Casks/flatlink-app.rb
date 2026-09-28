cask "flatlink-app" do
  version "1.1.0"
  sha256 "f65d5274c12d680c874410ec2d41768977081df6854747604c428d506fc7196a"

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
