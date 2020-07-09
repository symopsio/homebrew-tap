class Sym < Formula
  include Language::Python::Virtualenv

  desc "The Sym CLI allows you to perform privileged operations with Sym."
  homepage "https://symops.com/"

  url "https://files.pythonhosted.org/packages/3f/19/e3768aa6e38993b066c74f8319f7e35b7f15970e3de995702420c0213800/sym-cli-0.0.5.tar.gz"
  sha256 "ef1362ec97ef8497661a3e256eafc4b798b020b0e8b61dacb8d2ef0cf16b5839"

  depends_on "python@3.8"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "0.0.3", shell_output("#{bin}/sym version").strip
  end
end
