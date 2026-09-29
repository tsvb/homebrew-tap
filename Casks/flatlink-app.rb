cask "flatlink-app" do
  version "1.1.4"
  sha256 "dda5b9f999bf1a063dbdfc09c227d4f5e0b7a21c335880db370459f63205db62"

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
