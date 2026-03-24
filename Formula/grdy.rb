class Grdy < Formula
  desc "CLI tool to render JSON data as tables"
  homepage "https://github.com/chrismo/grdy"
  license "BSD-3-Clause"
  version "0.5.0"

  on_intel do
    url "https://github.com/chrismo/grdy/releases/download/v0.5.0/grdy-v0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "7d3ff91302e8bef2f1bdfd5b0bc9f87a1ea9ecd08161bfb0d9ff432154ec4ba9"
  end

  on_arm do
    url "https://github.com/chrismo/grdy/releases/download/v0.5.0/grdy-v0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "026ed2dfcf434f1f5e2216fbfb9ef77f83e050f8fc1327fc68a7d97d6da24b88"
  end

  def install
    bin.install "grdy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grdy --version")
  end
end
