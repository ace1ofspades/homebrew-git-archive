class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "1dd809ad2239740fe42f2e267e3603cadce905a96ac2b1fff126616d7ee39c82"
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
