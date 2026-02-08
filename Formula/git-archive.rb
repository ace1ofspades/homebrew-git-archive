class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "9fc855d6b4e08086df4b6c5708ccc41847097c66606cb46fc826d2b17b3fdbb6"
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
