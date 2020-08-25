class Sym < Formula
  include Language::Python::Virtualenv

  desc "CLI to perform privileged operations with Sym"
  homepage "https://symops.com"

  url "https://files.pythonhosted.org/packages/b0/35/98051245accfd3f2bba7782d967e941ef607792da585106452b8bf97649e/sym-cli-0.0.26.tar.gz"
  sha256 "c5cfa7612336340a627c6b6f19458f68e12d4ecea07aed62471e182e613cc69b"

  bottle do
    root_url "https://dl.bintray.com/symopsio/bottles-tap"
    cellar :any
    sha256 "e2305112ee0c76037a6bfdcd8288304d406d1b0bb83bf9b54e2d81833cd7e058" => :mojave
  end

  depends_on "python@3.8"

  resource "analytics-python" do
    url "https://files.pythonhosted.org/packages/6d/ae/affa8190ad884f9654483201f6fe71465bd59263b3365c0e3b544cd36203/analytics-python-1.2.9.tar.gz"
    sha256 "f3d1ca27cb277da67c10d71a5c9c593d2a9ec99109e31409ab771b44821a86bf"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/88/cc/8d50129435182a8966d812b0843b81ea33cf96faa4a4abeab8400fcf9eb8/boto3-1.14.48.tar.gz"
    sha256 "997369e68a5091f608897caa0322daca12ee76338371b983b34b98c57c1e1913"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/84/83/91e2fa246daca0b4c1226e0930da3353fffd41ca484ca496d35e27465ea9/botocore-1.17.48.tar.gz"
    sha256 "db9cd219d4180e782615179950e16b43d13e2f3fa57f510a43bf4ed5a3a8dacb"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/40/a7/ded59fa294b85ca206082306bba75469a38ea1c7d44ea7e1d64f5443d67a/certifi-2020.6.20.tar.gz"
    sha256 "5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "click-option-group" do
    url "https://files.pythonhosted.org/packages/c9/94/cf8b5c2c23f20cb3c900b6b2de0ab727189544155a14e5799ef0803a2461/click-option-group-0.5.1.tar.gz"
    sha256 "764eb49094dc864e28afbf36c6bb140d09ef714a915c0c5972c982113ed70fab"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/da/93/84fa12f2dc341f8cf5f022ee09e109961055749df2d0c75c5f98746cfe6c/decorator-4.4.2.tar.gz"
    sha256 "e3a62f0520172440ca0dcc823749319382e377f37f140a0b99ef45fecb84bfe7"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/93/22/953e071b589b0b1fee420ab06a0d15e5aa0c7470eb9966d60393ce58ad61/docutils-0.15.2.tar.gz"
    sha256 "a2aeea129088da402665e92e0b25b04b073c04b2dce4ab65caaa38b7ce2e1a99"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "immutables" do
    url "https://files.pythonhosted.org/packages/6b/58/c6be0577cccbe1658fcb1ec3673e9ac7508af26a2f5c814cc041c7d21212/immutables-0.14.tar.gz"
    sha256 "a0a1cc238b678455145bae291d8426f732f5255537ed6a5b7645949704c70a78"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/df/48/62cf97ff7d2233e7db29dfb83f1584e26289e88af8af39de1a76629ac487/portalocker-2.0.0.tar.gz"
    sha256 "14487eed81aa914127edf0284e29c7ca8842c05bb33d96dc7e4bdb47282d26e4"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/da/67/672b422d9daf07365259958912ba533a0ecab839d4084c487a5fe9a5405f/requests-2.24.0.tar.gz"
    sha256 "b3559a131db72c33ee969480840fff4bb6dd111de7dd27c8ee1f820f4f00231b"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/50/de/2b688c062107942486c81a739383b1432a72717d9a85a6a1a692f003c70c/s3transfer-0.3.3.tar.gz"
    sha256 "921a37e2aefc64145e7b73d50c71bb4f26f46e4c9f414dc648c6245ff92cf7db"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/7d/a5/7d24a24ffa11d2acfe8618fea8a5cffc535649cd43812b2aedb1fe5e9fec/sentry-sdk-0.17.0.tar.gz"
    sha256 "09cbc253c827a88064c5ed548d24fb4294568bfe9b1816a857fa5a423d4ce762"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/81/f4/87467aeb3afc4a6056e1fe86626d259ab97e1213b1dfec14c7cb5f538bf0/urllib3-1.25.10.tar.gz"
    sha256 "91056c15fa70756691db97756772bb1eb9678fa585d9184f24534b100dc60f4a"
  end

  resource "validators" do
    url "https://files.pythonhosted.org/packages/8a/29/8ca6f7a2f354265b133653c6fbdce1865d4fabcc2d3503f10af4704efd33/validators-0.18.0.tar.gz"
    sha256 "bad0cf89a7f2e0aa9c4b76fa5f1d2309125a2c77eb176f03b89a6d5059271e63"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "0.0.26", shell_output("#{bin}/sym version").strip
  end
end
