cask "flatlink" do
  version "1.1.4"
  sha256 "8d7fb68d8d1cdfb1f0f1c2788541900bad33d9b6b0aea6b3d72d042277f7f505"

  url "https://github.com/tsvb/flatlink/releases/download/v#{version}/flatlink-#{version}-macos.zip"
  name "flatlink"
  desc "Flat folder of symlinks that shows a whole photo tree in DxO PhotoLab"
  homepage "https://timvanbenschoten.com/code/flatlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  # A prebuilt, notarized binary: a cask, not a formula, so installing it never
  # requires up-to-date Command Line Tools.
  binary "flatlink-#{version}/flatlink"
end
