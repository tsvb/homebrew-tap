cask "flatlink" do
  version "0.1.0"
  sha256 "d81e3a154807e5ba28122463fabc786f868c0c256a46b2a260425def0b1ddff3"

  url "https://github.com/tsvb/flatlink/releases/download/v#{version}/flatlink-#{version}-macos.zip"
  name "flatlink"
  desc "Flat folder of symlinks that shows a whole photo tree in DxO PhotoLab"
  homepage "https://github.com/tsvb/flatlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  # A prebuilt, notarized binary: a cask, not a formula, so installing it never
  # requires up-to-date Command Line Tools.
  binary "flatlink-#{version}/flatlink"
end
