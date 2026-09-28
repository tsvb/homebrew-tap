cask "flatlink" do
  version "1.0.0"
  sha256 "8d35fe7cffccc238e6add36fb9f7494306fe051d1bb82793dd8621cf1fd6e44e"

  url "https://github.com/tsvb/flatlink/releases/download/v#{version}/flatlink-#{version}-macos.zip"
  name "flatlink"
  desc "Flat folder of symlinks that shows a whole photo tree in DxO PhotoLab"
  homepage "https://github.com/tsvb/flatlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  # A prebuilt, notarized binary: a cask, not a formula, so installing it never
  # requires up-to-date Command Line Tools.
  binary "flatlink-#{version}/flatlink"
end
