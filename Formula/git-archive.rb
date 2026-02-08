class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "098836803c71618a520917d8769806f5f23f47972c9255d92b3b8030ff4b1790"
  license "MIT"

  def install
    libexec.install Dir["lib/*"]

    # Install main executable directly to bin
    bin.install "bin/git-archive"
  end

  test do
    assert_match "git-archive 0.2.1", shell_output("#{bin}/git-archive --version")
  end
end
