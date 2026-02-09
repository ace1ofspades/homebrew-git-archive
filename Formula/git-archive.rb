class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "4c6f79a20647a1d5f9f891f654cfb803cbcec68408609fb287d69b952fb519fb"
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
