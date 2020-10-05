class Sym < Formula
  include Language::Python::Virtualenv

  desc "CLI to perform privileged operations with Sym"
  homepage "https://symops.com"

  url "https://files.pythonhosted.org/packages/a5/07/361d52afa1acc218a4f014be09783da80ab96de7fd6f2a27e72657d3464f/sym-cli-0.0.47.tar.gz"
  sha256 "382741d3b49383ff719413d6c3bdfa62c6c4705cfcb3cb196b8c949a101f9110"

  bottle do
    root_url "https://dl.bintray.com/symopsio/bottles-tap"
    cellar :any
    sha256 "f9c49d6a8d10d0ce1bd170847111ace6bd732ba9dc3746a98d49ed635af5d398" => :catalina
  end

  depends_on "python@3.8"

  resource "analytics-python" do
    url "https://files.pythonhosted.org/packages/6d/ae/affa8190ad884f9654483201f6fe71465bd59263b3365c0e3b544cd36203/analytics-python-1.2.9.tar.gz"
    sha256 "f3d1ca27cb277da67c10d71a5c9c593d2a9ec99109e31409ab771b44821a86bf"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/b8/7a/330b454710a8e472ea0acb7e3cd756ba5120316a00f1cf3335d691134833/boto3-1.15.11.tar.gz"
    sha256 "713da2b28e9e4cd77e922690c97935dd2316ab27635b6bab4745a2d42bd887ec"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/f1/59/4da88f91473d2fdc287749fa5f9fdd5186e2069f405e2db2d16aeb6c2769/botocore-1.18.11.tar.gz"
    sha256 "1531ee5d7f7d0f0d9a12ea829ef046ac52063a1948409ae19a452a3f47a07937"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/40/a7/ded59fa294b85ca206082306bba75469a38ea1c7d44ea7e1d64f5443d67a/certifi-2020.6.20.tar.gz"
    sha256 "5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/cb/ae/380e33d621ae301770358eb11a896a34c34f30db188847a561e8e39ee866/cffi-1.14.3.tar.gz"
    sha256 "f92f789e4f9241cd262ad7a555ca2c648a98178a953af117ef7fad46aa1d5591"
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

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/5d/4b/7bb135c5787c003cdbc44990c5f41908f0f37135e0bb554e880d90fd5f6f/cryptography-3.1.1.tar.gz"
    sha256 "9d9fc6a16357965d282dd4ab6531013935425d0dc4950df2e0cf2a1b1ac1017d"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/da/93/84fa12f2dc341f8cf5f022ee09e109961055749df2d0c75c5f98746cfe6c/decorator-4.4.2.tar.gz"
    sha256 "e3a62f0520172440ca0dcc823749319382e377f37f140a0b99ef45fecb84bfe7"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "immutables" do
    url "https://files.pythonhosted.org/packages/6b/58/c6be0577cccbe1658fcb1ec3673e9ac7508af26a2f5c814cc041c7d21212/immutables-0.14.tar.gz"
    sha256 "a0a1cc238b678455145bae291d8426f732f5255537ed6a5b7645949704c70a78"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/74/24/9b720cc6b2a73c908896a0ed64cb49780dcfbf4964e23a725aa6323f4452/jeepney-0.4.3.tar.gz"
    sha256 "3479b861cc2b6407de5188695fa1a8d57e5072d7059322469b62628869b8e36e"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/3e/79/da95ce71b572ce01c268492957cc4c1055da6f683077a6caba10944dc4f2/keyring-21.4.0.tar.gz"
    sha256 "9aeadd006a852b78f4b4ef7c7556c2774d2432bbef8ee538a3e9089ac8b11466"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/df/48/62cf97ff7d2233e7db29dfb83f1584e26289e88af8af39de1a76629ac487/portalocker-2.0.0.tar.gz"
    sha256 "14487eed81aa914127edf0284e29c7ca8842c05bb33d96dc7e4bdb47282d26e4"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
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

  resource "SecretStorage" do
    url "https://files.pythonhosted.org/packages/fd/9f/36197c75d9a09b1ab63f56cb985af6cd858ca3fc41fd9cd890ce69bae5b9/SecretStorage-3.1.2.tar.gz"
    sha256 "15da8a989b65498e29be338b3b279965f1b8f09b9668bd8010da183024c8bff6"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/07/43/a3e5186e9262fc7edfb83a376ba7647b5a776047b5302124130869a7f5a6/sentry-sdk-0.18.0.tar.gz"
    sha256 "1d91a0059d2d8bb980bec169578035c2f2d4b93cd8a4fb5b85c81904d33e221a"
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
    url "https://files.pythonhosted.org/packages/6e/54/8b4292f28b97aaaca03ccc70bf40bbf012a41f2c7887715e613ea805429e/validators-0.18.1.tar.gz"
    sha256 "1a653b33c0ab091790f65f42b61aa191e354ed5fdedfeb17d24a86d0789966d7"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "0.0.47", shell_output("#{bin}/sym version").strip
  end
end
