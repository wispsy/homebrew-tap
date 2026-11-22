class Immunity < Formula
  include Language::Python::Virtualenv

  desc "Ahead-of-time (AOT) compiled Zsh plugin manager in Python"
  homepage "https://github.com/wispsy/immunity"
  url "https://files.pythonhosted.org/packages/source/i/immunity/immunity-0.1.0.tar.gz"
  sha256 "95360706901e78ea753862b5edb3aa6aea3d1aae2e6f533c0c5d3817bc68e53d"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "immunity 0.1.0", shell_output("#{bin}/immunity --version")
    assert_match "Immunity Zsh Integration", shell_output("#{bin}/immunity init")
    system libexec/"bin/python", "-c", "import immunity; assert immunity.__version__ == '0.1.0'"
  end
end
