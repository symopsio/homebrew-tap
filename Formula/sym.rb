class Sym < Formula
  include Language::Python::Virtualenv

  desc "CLI to perform privileged operations with Sym"
  homepage "https://symops.com"

  url "https://files.pythonhosted.org/packages/9f/a8/4870a0586faa6599d6bb4c6b1a5e35c9a16a170bfa1ad0e0a18b243689e9/sym-cli-0.0.10.tar.gz"
  sha256 "e9c88df20daec2c3be62e48024025dec8c560606b40f72f31a6d0ae79eab1dd4"

  bottle do
    root_url "https://dl.bintray.com/symopsio/bottles-tap"
    cellar :any
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
    assert_equal "0.0.10", shell_output("#{bin}/sym version").strip
  end
end
