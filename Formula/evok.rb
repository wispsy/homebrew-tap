class Evok < Formula
  include Language::Python::Virtualenv

  desc "Pure-Python high-performance package manager and virtualization runtime"
  homepage "https://github.com/wispsy/evok"
  url "https://files.pythonhosted.org/packages/source/e/evok/evok-0.1.2.tar.gz"
  sha256 "ab99cdd748c74b2d0202eb3dd30c1b3e1f0544509b50e9dffd6547ec01761abd"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "evok 0.1.2", shell_output("#{bin}/ev --version")
    assert_match "evok 0.1.2", shell_output("#{bin}/evok --version")
    assert_match "evok version:", shell_output("#{bin}/ev info")
    system libexec/"bin/python", "-c", "import evok; assert evok.__version__ == '0.1.2'"
  end
end
