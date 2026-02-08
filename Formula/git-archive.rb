class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "5d1f058587de23f768a3c805626ea384e988c23a6dbd10b84310c4468a81b2ff"
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
