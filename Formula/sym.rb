class Sym < Formula
  include Language::Python::Virtualenv

  desc "CLI to perform privileged operations with Sym"
  homepage "https://symops.com"

  url "https://files.pythonhosted.org/packages/ff/c7/5a01a7d72489c9efbb9919b0e53cb6949a1a511afdb8ec79225f42c22cf2/sym-cli-0.0.8.tar.gz"
  sha256 "d17cb6d8bf2e3f53dbdc67d98872806bce89186b6e4c39d5db50bad1e32f4037"

  bottle do
    root_url "https://dl.bintray.com/symopsio/bottles-tap"
    cellar :any
    sha256 "c0e274c92a7418feee8c4789d56491f2b1f69e80db3ace9d414bb6f92b111bbc" => :mojave
    sha256 "18ea9a032c87c9b00910b4928d394086cdbdf77fd931fc91ee3b7adfe2ce91b2" => :catalina
  end

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
    assert_equal "0.0.8", shell_output("#{bin}/sym version").strip
  end
end
