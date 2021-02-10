# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class Sym < Formula
  desc "CLI to perform privileged operations with Sym"
  homepage "https://docs.symops.com"
  version "0.1.22"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/7f/86/44c973af5ae9eee0adfc6f8e321a52f05d62991b42c7700a4b76010662de/sym-cli-0.1.22.tar.gz"
    sha256 "91bb1789f17c2129d2a6a9399299e433ff85e12e9b51bc132953ebf488c8a1c2"

    bottle do
    end

    depends_on "python@3.8"

    resource "analytics-python" do
      url "https://files.pythonhosted.org/packages/6d/ae/affa8190ad884f9654483201f6fe71465bd59263b3365c0e3b544cd36203/analytics-python-1.2.9.tar.gz"
      sha256 "f3d1ca27cb277da67c10d71a5c9c593d2a9ec99109e31409ab771b44821a86bf"
    end

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/51/ab/2f0571fc563f0f62d419d101b827325f9ce8037b925b7180151f18ba05cb/boto3-1.17.5.tar.gz"
      sha256 "d6aafb804fca2b67c65dda78ad8b4afed901e004071208b84c804d345ad9ebba"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/33/da/6614e38d4e8484a0c1c141a21a3365e38d7f698014f0688e78442e3d661d/botocore-1.20.5.tar.gz"
      sha256 "04a1df759681f5f171accb354d863bfed0774d64a4e8ee35ff49835755660a4e"
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
      url "https://files.pythonhosted.org/packages/27/5a/007acee0243186123a55423d49cbb5c15cb02d76dd1b6a27659a894b13a2/cryptography-3.4.4.tar.gz"
      sha256 "ee5e19f0856b6fbbdbab15c2787ca65d203801d2d65d0b8de6218f424206c848"
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
      url "https://files.pythonhosted.org/packages/19/c7/e1a9c556745518c9c3d46613c10a968757b16e29341ec8e0815fd07e0f93/keyring-21.8.0.tar.gz"
      sha256 "1746d3ac913d449a090caf11e9e4af00e26c3f7f7e81027872192b2398b98675"
    end

    resource "policyuniverse" do
      url "https://files.pythonhosted.org/packages/5c/d5/07859103b14441c6f140a1186ebcb61ca95e0283baf93d467101e95dc311/policyuniverse-1.3.3.20210205.tar.gz"
      sha256 "095ec8c1513865ca963ecd609c46159c6eb736b8ae49aeab4b119dcf666a71ef"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/f5/b3/457e7435c2c6acff3eff3593708372f7fc8dd35ab2873b04a32f9a7180e4/portalocker-2.2.1.tar.gz"
      sha256 "e5f6ffb2f360e9aef615a7c284143d2a93bb640c62e8e45a703e6083fc5aa114"
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
      url "https://files.pythonhosted.org/packages/08/e1/3ee2096ebaeeb8c186d20ed16c8faf4a503913e5c9a0e14cd6b8ffc405a3/s3transfer-0.3.4.tar.gz"
      sha256 "7fdddb4f22275cf1d32129e21f056337fd2a80b6ccef1664528145b72c49e6d2"
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
      url "https://files.pythonhosted.org/packages/d7/8d/7ee68c6b48e1ec8d41198f694ecdc15f7596356f2ff8e6b1420300cf5db3/urllib3-1.26.3.tar.gz"
      sha256 "de3eedaad74a2683334e282005cd8d7f22f4d55fa690a2a1020a416cb0a47e73"
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
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.1.22/sym-cli-darwin-x64.tar.gz"
      sha256 "0cc8d4e90d36816355b6ecba721397e7d3ea474f066358b0ffde24aab8d87757"
    else
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.1.22/sym-cli-linux-x64.tar.gz"
      sha256 "187f92a8cf4c78ce0adc753e60db47070ae8dc1cd77daf1cd80afff38f0ff699"
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
