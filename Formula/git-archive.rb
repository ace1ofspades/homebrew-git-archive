class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "b9fc8710418f1597579360cf704ec6b7b8c50484101597535722e0cea74c891a"
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
