class Supercomputer < Formula
  include Language::Python::Virtualenv

  desc "Retro mainframe operator console: blinkenlights driven by real system load"
  homepage "https://github.com/rdubar/supercomputer"
  url "https://files.pythonhosted.org/packages/e1/53/495667edfa9469093628b6cb87216a03542eaef7e0015e0cf935cd8f2e60/supercomputer_console-1.3.3.tar.gz"
  sha256 "9b1704ee1f328889e3c44b6a949309c89f47cb1b0beca3386fd9878b483bed3d"
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
