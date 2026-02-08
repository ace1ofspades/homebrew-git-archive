class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "0802dbf51b125da87a1e20d9c7664819b70af7372f90d2f3e0072f809c0f3180"
  license "MIT"

  def install
    libexec.install Dir["lib/*"]
    bin.install "bin/git-archive"

    
    # write version from tag for runtime
    (libexec/"VERSION").write version.to_s
  end

  test do
    system "#{bin}/git-archive", "--version"
  end
end
