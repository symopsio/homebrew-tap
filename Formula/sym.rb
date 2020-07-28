class Sym < Formula
  include Language::Python::Virtualenv

  desc "CLI to perform privileged operations with Sym"
  homepage "https://symops.com"

  url "https://files.pythonhosted.org/packages/a3/67/b7d9e4c50546e7c5606bfbc632582d7f593f5d6d7e89456b70e4b9e48c12/sym-cli-0.0.11.tar.gz"
  sha256 "606546572fba788f22eb092dd6ed37ae2f6f399b789a70bc3036aab4cf7a61c8"

  bottle do
    root_url "https://dl.bintray.com/symopsio/bottles-tap"
    cellar :any
    sha256 "29b3479e09c165e27506d29ca233afd5cf6eb24ad9a2e312ac547a2c73b6af4c" => :mojave
  end

  depends_on "python@3.8"

resource "certifi" do
    url "https://files.pythonhosted.org/packages/40/a7/ded59fa294b85ca206082306bba75469a38ea1c7d44ea7e1d64f5443d67a/certifi-2020.6.20.tar.gz"
    sha256 "5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/3e/b9/9a4925ab0d099989a21ea4de8505b0615d88cb0018ef869f4b00ee9697b3/sentry-sdk-0.16.2.tar.gz"
    sha256 "38bb09d0277117f76507c8728d9a5156f09a47ac5175bb8072513859d19a593b"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/81/f4/87467aeb3afc4a6056e1fe86626d259ab97e1213b1dfec14c7cb5f538bf0/urllib3-1.25.10.tar.gz"
    sha256 "91056c15fa70756691db97756772bb1eb9678fa585d9184f24534b100dc60f4a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "0.0.11", shell_output("#{bin}/sym version").strip
  end
end
