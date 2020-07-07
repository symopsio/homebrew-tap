# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Sym < Formula
  include Language::Python::Virtualenv

  desc "Sym CLI"
  homepage "https://symops.com/"
  url "https://files.pythonhosted.org/packages/77/9f/eeda5f28b08f2dcd6b95991920dc0f00b515d55eef66b2977dda083900b9/sym-cli-0.0.2.tar.gz"
  sha256 "dbaf3b2f549776517947806acb05d557ebee4156f167d6bf97cb00dfb53915bf"

  depends_on "python@3.8"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "0.0.2", shell_output("#{bin}/sym version").strip
  end
end
