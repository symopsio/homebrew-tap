class Sym < Formula
  include Language::Python::Virtualenv

  desc "The Sym CLI allows you to perform privileged operations with Sym."
  homepage "https://symops.com/"

  url "https://files.pythonhosted.org/packages/9d/3b/82700b2eb48b68496541a626a2e340d24c9782bbf31842424105736c0383/sym-cli-0.0.3.tar.gz"
  sha256 "8ab4a94a61ef89697b471109f249063fdea17bd36b44a293a22a7b36eb3b8b00"

  depends_on "python@3.8"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end

  resource "xdg" do
    url "https://files.pythonhosted.org/packages/a4/54/923c5a30db7ce3df6aa4cc9ad785847d2356443781da85b8d769d4737622/xdg-4.0.1.tar.gz"
    sha256 "c939c99def394cbaf765a3ee55efd6ea7e4c5eaed8d9ebc2d03af84ba35dec57"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "0.0.3", shell_output("#{bin}/sym version").strip
  end
end
