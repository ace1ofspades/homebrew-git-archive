class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "5d1f058587de23f768a3c805626ea384e988c23a6dbd10b84310c4468a81b2ff"
  license "MIT"

  def install
    libexec.install Dir["lib/*"]
    bin.install "bin/git-archive"

    bin.env_script_all_files(
      libexec: libexec,
      GIT_ARCHIVE_VERSION: "0.2.1"
    )
  end

  test do
    system "#{bin}/git-archive", "--version"
  end
end
