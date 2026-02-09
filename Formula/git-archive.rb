class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "cf9cd79b4131440b1857b9a490ca6fb77e66c5103ca345b824ac8dd372f54a9e"
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
