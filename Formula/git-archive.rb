class GitArchive < Formula
  desc "Minimal offline Git archiver: bundle + sha256 + zip"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b3105b4c5aae515fd437452b45f6537bdc621e2f36b908bdac1f534bc6070daf"
  license "MIT"

  def install
    bin.install "bin/git-archive"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/git-archive 2>&1", 0)
  end
end
