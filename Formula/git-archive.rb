class GitArchive < Formula
  desc "Minimal offline Git archiver: bundle + sha256 + zip"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PUT_SHA256_HERE"
  license "MIT"

  def install
    bin.install "bin/git-archive"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/git-archive 2>&1", 0)
  end
end
