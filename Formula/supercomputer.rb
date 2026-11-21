class Supercomputer < Formula
  include Language::Python::Virtualenv

  desc "Retro mainframe operator console: blinkenlights driven by real system load"
  homepage "https://github.com/rdubar/supercomputer"
  url "https://files.pythonhosted.org/packages/61/13/e9d3b28e255270373b0c18000b5c7a95f459b95bcc33e566d9882820d826/supercomputer_console-1.3.4.tar.gz"
  sha256 "d829836ee79c8b7f950a5e72732b61029bff01323a4faf8ad5facfafe470cf6c"
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
