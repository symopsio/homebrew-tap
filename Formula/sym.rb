# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class Sym < Formula
  desc "CLI to perform privileged operations with Sym"
  homepage "https://docs.symops.com"
  version "0.1.30"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/ca/15/803fe0d7bb53ee7b93f7fddf3d12a3481d69ecf1787ec7910a7c4b9cd880/sym-cli-0.1.30.tar.gz"
    sha256 "1e051fd40daa65f31ef0c39dbbcf6002aaa98031cfbf627773cf03f60b972b1b"

    bottle do
    end

    depends_on "python@3.8"

    resource "analytics-python" do
      url "https://files.pythonhosted.org/packages/6d/ae/affa8190ad884f9654483201f6fe71465bd59263b3365c0e3b544cd36203/analytics-python-1.2.9.tar.gz"
      sha256 "f3d1ca27cb277da67c10d71a5c9c593d2a9ec99109e31409ab771b44821a86bf"
    end

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/b5/35/8bed4e22b8b30ee6275f9dbc8a1a73adce75be06a862254d3d5312654960/boto3-1.17.58.tar.gz"
      sha256 "4caf01511a07e229855b964d43ddbc6b3db1fd88a3747a4a7ca6d398ce04f3d3"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/22/dc/ba42e3e135efaad56e595c0ae3eb7d66d9c2d112879dc8b7c9ba26c21ee8/botocore-1.20.58.tar.gz"
      sha256 "2830596e0d92d82abaf78a7926e49a3b7a80c93cdc75e95717a1dd4ea9027283"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc397a/certifi-2020.12.5.tar.gz"
      sha256 "1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/a8/20/025f59f929bbcaa579704f443a438135918484fffaacfaddba776b374563/cffi-1.14.5.tar.gz"
      sha256 "fd78e5fee591709f32ef6edb9a015b4aa1a5022598e36227500c8f4e02328d9c"
    end

    resource "chardet" do
      url "https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
      sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
      sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
    end

    resource "click-option-group" do
      url "https://files.pythonhosted.org/packages/e5/cb/c5698a6434db57236cdab8852d0305ad71a033f29d8a769faabf35f96e29/click-option-group-0.5.2.tar.gz"
      sha256 "743733a0f564438b6b761f49ddf37d845f9a662294ecabe0e832e597208bcf31"
    end

    resource "colorama" do
      url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
      sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/d4/85/38715448253404186029c575d559879912eb8a1c5d16ad9f25d35f7c4f4c/cryptography-3.3.2.tar.gz"
      sha256 "5a60d3780149e13b7a6ff7ad6526b38846354d11a15e21068e57073e29e19bed"
    end

    resource "decorator" do
      url "https://files.pythonhosted.org/packages/a9/09/dd085a8afcf48fdaba851fe10956d5dbf1e9091206f7ca717223563f75c2/decorator-5.0.7.tar.gz"
      sha256 "6f201a6c4dac3d187352661f508b9364ec8091217442c9478f1f83c003a0f060"
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
      url "https://files.pythonhosted.org/packages/19/c7/e1a9c556745518c9c3d46613c10a968757b16e29341ec8e0815fd07e0f93/keyring-21.8.0.tar.gz"
      sha256 "1746d3ac913d449a090caf11e9e4af00e26c3f7f7e81027872192b2398b98675"
    end

    resource "policyuniverse" do
      url "https://files.pythonhosted.org/packages/eb/47/14a65ed83d203da66c2aa2dec2661846cd5adb1163ca734542bd44773264/policyuniverse-1.3.4.20210402.tar.gz"
      sha256 "f40ef95b0b73db8891f4ce9a9d25260ed332f48b0f72b515a2481ff7cad0fca2"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/ff/e9/b930849d3c5bbd7d8887503bf7eda18da0beb817b11c71bf6fd93204f5b3/portalocker-2.3.0.tar.gz"
      sha256 "4e913d807aa6598c320e8a50c50e2ee0602bc45240b485e3f8bc06f13060084c"
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
      url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
      sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
      sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/27/90/f467e516a845cf378d85f0a51913c642e31e2570eb64b352c4dc4c6cbfc7/s3transfer-0.4.2.tar.gz"
      sha256 "cb022f4b16551edebbb31a377d3f09600dbada7363d8c5db7976e7f47732e1b2"
    end

    resource "SecretStorage" do
      url "https://files.pythonhosted.org/packages/cd/08/758aeb98db87547484728ea08b0292721f1b05ff9005f59b040d6203c009/SecretStorage-3.3.1.tar.gz"
      sha256 "fd666c51a6bf200643495a04abb261f83229dcb6fd8472ec393df7ffc8b6f195"
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
      url "https://files.pythonhosted.org/packages/cb/cf/871177f1fc795c6c10787bc0e1f27bb6cf7b81dbde399fd35860472cecbc/urllib3-1.26.4.tar.gz"
      sha256 "e7b021f7241115872f92f43c6508082facffbd1c048e3c6e2bb9c2a157e28937"
    end

    resource "validators" do
      url "https://files.pythonhosted.org/packages/33/1a/4e4c12982b093796c1ceaff49cbc5998fb3a7866da755f8e7a1a40b8fda4/validators-0.18.2.tar.gz"
      sha256 "37cd9a9213278538ad09b5b9f9134266e7c226ab1fede1d500e29e0a8fbb9ea6"
    end

    def install
      virtualenv_install_with_resources
    end
  else
    bottle :unneeded

    if OS.mac?
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.1.30/sym-cli-darwin-x64.tar.gz"
      sha256 "b4d3a9a47d33455f6d604ebb23f9825c5fa2af7412816337c1f3361c5005f561"
    else
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.1.30/sym-cli-linux-x64.tar.gz"
      sha256 "e2073f72d54bb46607677bbed2028b1d420e5836ec175b8fcf1b76924b769ac5"
    end

    def install
      (lib/"sym").install "lib", "sym"
      bin.write_exec_script lib/"sym"/"sym"
    end
  end

  test do
    assert_match /\d+\.\d+\.\d/, shell_output("#{bin}/sym version").strip
  end
end
