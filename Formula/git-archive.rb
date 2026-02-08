class GitArchive < Formula
  desc "Offline-first Git archiver with bundle, checksum, encryption and restore"
  homepage "https://github.com/ace1ofspades/git-archive"
  url "https://github.com/ace1ofspades/git-archive/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "2d4907174d49938f4442b6fd28e477f1a7c171a7b6893ab79d61e28c45deab42"
  license "MIT"

  def install
    libexec.install Dir["lib/*"]

    # Install the main script under libexec
    libexec.install "bin/git-archive"

    # Create wrapper in bin/ with proper env
    bin.write_env_script libexec/"git-archive",
      GIT_ARCHIVE_LIB: libexec
  end

  test do
    assert_match "git-archive 0.2.1", shell_output("#{bin}/git-archive --version")
  end
end
