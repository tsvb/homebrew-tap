class Flatlink < Formula
  desc "Flat folder of symlinks that shows a whole photo tree in DxO PhotoLab"
  homepage "https://github.com/tsvb/flatlink"
  url "https://github.com/tsvb/flatlink/releases/download/v0.1.0/flatlink-0.1.0-macos.zip"
  sha256 "d81e3a154807e5ba28122463fabc786f868c0c256a46b2a260425def0b1ddff3"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "flatlink"
  end

  test do
    assert_match "flatlink #{version}", shell_output("#{bin}/flatlink --version")

    (testpath/"src/day").mkpath
    touch testpath/"src/day/A.DNG"
    touch testpath/"src/day/A.JPG"
    touch testpath/"src/B.jpg"
    system bin/"flatlink", "--skip-paired-jpegs", testpath/"src", testpath/"flat"
    assert_predicate testpath/"flat/day__A.DNG", :symlink?
    assert_predicate testpath/"flat/B.jpg", :symlink?
    refute_path_exists testpath/"flat/day__A.JPG"
  end
end
