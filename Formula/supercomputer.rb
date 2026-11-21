class Supercomputer < Formula
  include Language::Python::Virtualenv

  desc "Retro mainframe operator console: blinkenlights driven by real system load"
  homepage "https://github.com/rdubar/supercomputer"
  url "https://files.pythonhosted.org/packages/2f/1a/46cd6615d721b1db9b074d8d7b7f59c223dff97575de775f95e0a4d616bf/supercomputer_console-1.3.1.tar.gz"
  sha256 "6f88ef22ca2880ff2a35594b43c34406bc9a0c08695dbf461874ee86b90e5626"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("SUPERCOMPUTER_NO_UPDATE_CHECK=1 #{bin}/supercomputer --version")
    assert_match "STATUS CHECK", shell_output("#{bin}/supercomputer --check || true")
  end
end
