class Sym < Formula
  include Language::Python::Virtualenv

  desc "CLI to perform privileged operations with Sym"
  homepage "https://symops.com"

  url "https://files.pythonhosted.org/packages/6e/c4/b3b1a7e7be2398524f32b5b862176b5f5e9c1aa56f3288e748663e899485/sym-cli-0.0.66.tar.gz"
  sha256 "5618c1b4dde47784c6764c9c875d2e548f7aa25071987b59d4461a862b8fa964"

  bottle do
    root_url "https://dl.bintray.com/symopsio/bottles-tap"
    cellar :any
  end

  depends_on "python@3.8"

  resource "analytics-python" do
    url "https://files.pythonhosted.org/packages/6d/ae/affa8190ad884f9654483201f6fe71465bd59263b3365c0e3b544cd36203/analytics-python-1.2.9.tar.gz"
    sha256 "f3d1ca27cb277da67c10d71a5c9c593d2a9ec99109e31409ab771b44821a86bf"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/a7/d8/68967f70738ad8565d510ba25eb16828f08a3b7a5028aee787f05b0d8a07/boto3-1.16.37.tar.gz"
    sha256 "ee86c26b3d457aa4d0256d0535d13107c32aa33bb5eb2a0b2dac9d81c3aca405"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/a9/11/be7bbf039e05ada3bd7e8942394515e78d38cae529a1040377455b2547e9/botocore-1.19.37.tar.gz"
    sha256 "67bf1285455d79336ce7061da1768206b78f7a0efc13c8b4033fd348a74e7491"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc397a/certifi-2020.12.5.tar.gz"
    sha256 "1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/66/6a/98e023b3d11537a5521902ac6b50db470c826c682be6a8c661549cb7717a/cffi-1.14.4.tar.gz"
    sha256 "1a465cbe98a7fd391d47dce4b8f7e5b921e6cd805ef421d04f5f66ba8f06086c"
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
    url "https://files.pythonhosted.org/packages/e5/cb/c5698a6434db57236cdab8852d0305ad71a033f29d8a769faabf35f96e29/click-option-group-0.5.2.tar.gz"
    sha256 "743733a0f564438b6b761f49ddf37d845f9a662294ecabe0e832e597208bcf31"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/b7/82/f7a4ddc1af185936c1e4fa000942ffa8fb2d98cff26b75afa7b3c63391c4/cryptography-3.3.1.tar.gz"
    sha256 "7e177e4bea2de937a584b13645cab32f25e3d96fc0bc4a4cf99c27dc77682be6"
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
    url "https://files.pythonhosted.org/packages/bb/4f/06017fbbe94eeaf1e7852c2dd7a065ca7d813e17b4500f4e842531d72593/jeepney-0.6.0.tar.gz"
    sha256 "7d59b6622675ca9e993a6bd38de845051d315f8b0c72cca3aef733a20b648657"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/c9/5a/c7aefc112d75872ea2099c494b84ba6e108b20584264929e614c60939368/keyring-21.5.0.tar.gz"
    sha256 "207bd66f2a9881c835dad653da04e196c678bf104f8252141d2d3c4f31051579"
  end

  resource "policyuniverse" do
    url "https://files.pythonhosted.org/packages/02/93/541690f62a4be05fcea8b413200293478b71adcb0da3f6fe5a5c50ffe8a7/policyuniverse-1.3.2.20201216.tar.gz"
    sha256 "4e6d182a1f06ea49905f5df645beff897332db4719998af8324303181da5de84"
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
    url "https://files.pythonhosted.org/packages/9f/14/4a6542a078773957aa83101336375c9597e6fe5889d20abda9c38f9f3ff2/requests-2.25.0.tar.gz"
    sha256 "7f1a0b932f4a60a1a65caa4263921bb7d9ee911957e0ae4a23a6dd08185ad5f8"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/50/de/2b688c062107942486c81a739383b1432a72717d9a85a6a1a692f003c70c/s3transfer-0.3.3.tar.gz"
    sha256 "921a37e2aefc64145e7b73d50c71bb4f26f46e4c9f414dc648c6245ff92cf7db"
  end

  resource "SecretStorage" do
    url "https://files.pythonhosted.org/packages/ec/6e/2b7f0a6d85e20c918cce50ea89e5f72081d56088c98c4fa71e483c3b2826/SecretStorage-3.3.0.tar.gz"
    sha256 "30cfdef28829dad64d6ea1ed08f8eff6aa115a77068926bcc9f5225d5a3246aa"
  end

  resource "semver" do
    url "https://files.pythonhosted.org/packages/31/a9/b61190916030ee9af83de342e101f192bbb436c59be20a4cb0cdb7256ece/semver-2.13.0.tar.gz"
    sha256 "fa0fe2722ee1c3f57eac478820c3a5ae2f624af8264cbdf9000c980ff7f75e3f"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/0c/24/60edf9808f2461e108f5148b9093ec2de5957fe42502759804ac88b440d5/sentry-sdk-0.19.5.tar.gz"
    sha256 "737a094e49a529dd0fdcaafa9e97cf7c3d5eb964bd229821d640bc77f3502b3f"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/29/e6/d1a1d78c439cad688757b70f26c50a53332167c364edb0134cadd280e234/urllib3-1.26.2.tar.gz"
    sha256 "19188f96923873c92ccb987120ec4acaa12f0461fa9ce5d3d0772bc965a39e08"
  end

  resource "validators" do
    url "https://files.pythonhosted.org/packages/6e/54/8b4292f28b97aaaca03ccc70bf40bbf012a41f2c7887715e613ea805429e/validators-0.18.1.tar.gz"
    sha256 "1a653b33c0ab091790f65f42b61aa191e354ed5fdedfeb17d24a86d0789966d7"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "0.0.66", shell_output("#{bin}/sym version").strip
  end
end
