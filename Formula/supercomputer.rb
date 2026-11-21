class Supercomputer < Formula
  include Language::Python::Virtualenv

  desc "Retro mainframe operator console: blinkenlights driven by real system load"
  homepage "https://github.com/rdubar/supercomputer"
  url "https://files.pythonhosted.org/packages/81/7d/a62ad82bf16aa36cdd9bd8113ff6138e4fddcc6e8288d904b80d7cc757fb/supercomputer_console-1.3.2.tar.gz"
  sha256 "453cb4eeb475ceea8eab05f1955d46325787a4f91f9db553d0afb06cea10de32"
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
