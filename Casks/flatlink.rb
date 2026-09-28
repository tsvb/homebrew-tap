cask "flatlink" do
  version "1.1.0"
  sha256 "cea507fb1d75e00bd76c8e3eba5a95c933cace2fb91d0ebffe0cee67e7aee9be"

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
