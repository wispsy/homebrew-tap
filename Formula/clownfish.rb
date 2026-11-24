class Clownfish < Formula
  include Language::Python::Virtualenv

  desc "Lightweight, zero-dependency modern terminal emulator"
  homepage "https://github.com/wispsy/clownfish"
  url "https://files.pythonhosted.org/packages/source/c/clownfish/clownfish-0.6.5.tar.gz"
  sha256 "b98f6b48c55ce99deaa964d0cba19b1b7fecd48540f9ce8bca2b3f2e8bea76c6"
  license "MIT"

  depends_on "python@3.14"
  depends_on "python-tk@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "clownfish 0.6.5", shell_output("#{bin}/clownfish --version")
    system libexec/"bin/python", "-c", "import tkinter; import clownfish"
  end
end
