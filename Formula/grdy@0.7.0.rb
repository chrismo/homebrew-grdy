class GrdyAT070 < Formula
  desc "CLI tool to render JSON data as tables"
  homepage "https://github.com/chrismo/grdy"
  license "BSD-3-Clause"
  version "0.7.0"

  on_intel do
    url "https://github.com/chrismo/grdy/releases/download/v0.7.0/grdy-v0.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "c13993be799d53f57f33fc0d80301b9256cb6a773b6970e4e7f953d0ae0b7522"
  end

  on_arm do
    url "https://github.com/chrismo/grdy/releases/download/v0.7.0/grdy-v0.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "165fd1fccaca006875ca612610f8b3c4c8e9717a8143ad8649fb28a3fc9472c7"
  end

  keg_only :versioned_formula

  def install
    bin.install "grdy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grdy --version")
  end
end
