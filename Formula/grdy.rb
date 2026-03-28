class Grdy < Formula
  desc "CLI tool to render JSON data as tables"
  homepage "https://github.com/chrismo/grdy"
  license "BSD-3-Clause"
  version "0.6.0"

  on_intel do
    url "https://github.com/chrismo/grdy/releases/download/v0.6.0/grdy-v0.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "05986bb273abf9fcb7ab1cd3544694cb24afc83c24548524a89048898ba921c7"
  end

  on_arm do
    url "https://github.com/chrismo/grdy/releases/download/v0.6.0/grdy-v0.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "b95ccf4484cb60148e0976160e9ab06b4112cf5a0c89afc3173852eecc669cf2"
  end

  def install
    bin.install "grdy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grdy --version")
  end
end
