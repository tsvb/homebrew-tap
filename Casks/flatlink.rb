cask "flatlink" do
  version "1.1.3"
  sha256 "9f2470bb19d97d910fc489688b08bc8ed2e10dbc7de0e9567967da5327428c86"

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
