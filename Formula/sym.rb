# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class Sym < Formula
  desc "CLI to perform privileged operations with Sym"
  homepage "https://docs.symops.com"
  version "0.4.11"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/08/0a/933838b391bf3f4f675940e1e832885498ea9556ab16d80acd4872a49d90/sym-cli-0.4.11.tar.gz"
    sha256 "2c1fe2394dada61fd4de92921db50eade1d967a65d548d62acfeb0be6df4986c"

    bottle do
    end

    depends_on "python@3.8"

    resource "analytics-python" do
      url "https://files.pythonhosted.org/packages/32/a5/08555aee01e65bfbfba971e4ce993a3fef0aaf965d5e10d872785d883aeb/analytics-python-1.4.0.tar.gz"
      sha256 "a65141ab6e47db396f5bc5708b1db93ff9a99882d81fe808228afd5ebb6dfe5f"
    end

    resource "backoff" do
      url "https://files.pythonhosted.org/packages/55/52/5c209d0e9f1ad857573be96b285626d5e081d86dd50d7617ff0874685dd4/backoff-1.10.0.tar.gz"
      sha256 "b8fba021fac74055ac05eb7c7bfce4723aedde6cd0a504e5326bcb0bdd6d19a4"
    end

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/d2/22/a2ac9f49e495bbc4a53cd11048dd0d8d9825d51b2b4d246df33660e47251/boto3-1.26.57.tar.gz"
      sha256 "9c34ceac30a0672d2b6b030d459eb87f1a02d48f86f347fb4b054de85fb8a4b1"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/d0/89/4029d11264088b0baf48bd7acb0311581a9ee16ed306a84d3fde11b1faef/botocore-1.29.57.tar.gz"
      sha256 "02078e37d6b3626794f821385f3357195d87610fa1b25355577ed5393f16f7b8"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/37/f7/2b1b0ec44fdc30a3d31dfebe52226be9ddc40cd6c0f34ffc8923ba423b69/certifi-2022.12.7.tar.gz"
      sha256 "35824b4c3a97115964b408844d64aa14db1cc518f6562e8d7261699d1350a9e3"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
      sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/96/d7/1675d9089a1f4677df5eb29c3f8b064aa1e70c1251a0a8a127803158942d/charset-normalizer-3.0.1.tar.gz"
      sha256 "ebea339af930f8ca5d7a699b921106c6e29c617fe9606fa7baa043c1cdae326f"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
      sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
    end

    resource "click-option-group" do
      url "https://files.pythonhosted.org/packages/4c/29/ff7cd69825b5bfb48e39853b75d5dc2e98a581730f2b6c9c014188730755/click-option-group-0.5.5.tar.gz"
      sha256 "78ee474f07a0ca0ef6c0317bb3ebe79387aafb0c4a1e03b1d8b2b0be1e42fc78"
    end

    resource "colorama" do
      url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
      sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/cc/98/8a258ab4787e6f835d350639792527d2eb7946ff9fc0caca9c3f4cf5dcfe/cryptography-3.4.8.tar.gz"
      sha256 "94cc5ed4ceaefcbe5bf38c8fba6a21fc1d365bb8fb826ea1688e3370b2e24a1c"
    end

    resource "decorator" do
      url "https://files.pythonhosted.org/packages/66/0c/8d907af351aa16b42caae42f9d6aa37b900c67308052d10fdce809f8d952/decorator-5.1.1.tar.gz"
      sha256 "637996211036b6385ef91435e4fae22989472f9d571faba8927ba8253acbc330"
    end

    resource "idna" do
      url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
      sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
    end

    resource "immutables" do
      url "https://files.pythonhosted.org/packages/6b/58/c6be0577cccbe1658fcb1ec3673e9ac7508af26a2f5c814cc041c7d21212/immutables-0.14.tar.gz"
      sha256 "a0a1cc238b678455145bae291d8426f732f5255537ed6a5b7645949704c70a78"
    end

    resource "jeepney" do
      url "https://files.pythonhosted.org/packages/d6/f4/154cf374c2daf2020e05c3c6a03c91348d59b23c5366e968feb198306fdf/jeepney-0.8.0.tar.gz"
      sha256 "5efe48d255973902f6badc3ce55e2aa6c5c3b3bc642059ef3a91247bcfcc5806"
    end

    resource "jmespath" do
      url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
      sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end

    resource "keyring" do
      url "https://files.pythonhosted.org/packages/19/c7/e1a9c556745518c9c3d46613c10a968757b16e29341ec8e0815fd07e0f93/keyring-21.8.0.tar.gz"
      sha256 "1746d3ac913d449a090caf11e9e4af00e26c3f7f7e81027872192b2398b98675"
    end

    resource "mistune" do
      url "https://files.pythonhosted.org/packages/2d/a4/509f6e7783ddd35482feda27bc7f72e65b5e7dc910eca4ab2164daf9c577/mistune-0.8.4.tar.gz"
      sha256 "59a3429db53c50b5c6bcc8a07f8848cb00d7dc8bdb431a4ab41920d201d4756e"
    end

    resource "monotonic" do
      url "https://files.pythonhosted.org/packages/ea/ca/8e91948b782ddfbd194f323e7e7d9ba12e5877addf04fb2bf8fca38e86ac/monotonic-1.6.tar.gz"
      sha256 "3a55207bcfed53ddd5c5bae174524062935efed17792e9de2ad0205ce9ad63f7"
    end

    resource "policyuniverse" do
      url "https://files.pythonhosted.org/packages/4d/f0/70508150bc8c650025c14437e220358a59ebe568721a495ec5c8e7167d40/policyuniverse-1.5.0.20220613.tar.gz"
      sha256 "c66b1fb907750643a1987eb419b2112ae3f9c527c013429525f9fab989c9a2d7"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/1f/f8/969e6f280201b40b31bcb62843c619f343dcc351dff83a5891530c9dd60e/portalocker-2.7.0.tar.gz"
      sha256 "032e81d534a88ec1736d03f780ba073f047a06c478b06e2937486f334e955c51"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
      sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end

    resource "python-dateutil" do
      url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
      sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
    end

    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
      sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/9d/ee/391076f5937f0a8cdf5e53b701ffc91753e87b07d66bae4a09aa671897bf/requests-2.28.2.tar.gz"
      sha256 "98b1b2782e3c6c4904938b84c0eb932721069dfdb9134313beff7c83c2df24bf"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/e1/eb/e57c93d5cd5edf8c1d124c831ef916601540db70acd96fa21fe60cef1365/s3transfer-0.6.0.tar.gz"
      sha256 "2ed07d3866f523cc561bf4a00fc5535827981b117dd7876f036b0c1aca42c947"
    end

    resource "SecretStorage" do
      url "https://files.pythonhosted.org/packages/53/a4/f48c9d79cb507ed1373477dbceaba7401fd8a23af63b837fa61f1dcd3691/SecretStorage-3.3.3.tar.gz"
      sha256 "2403533ef369eca6d2ba81718576c5e0f564d5cca1b58f73a8b23e7d4eeebd77"
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
      url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
      sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end

    resource "sym-shared-cli" do
      url "https://files.pythonhosted.org/packages/50/3a/25d8f1a1a555a7f51503c42bbfbf0ebea3a9d87f9a94ce635f0518fcdfc8/sym-shared-cli-0.2.3.tar.gz"
      sha256 "df200b8fdb9b427025b049aaf3cc18be4580f4842ac2a9bd41df6e440c0ca605"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/c5/52/fe421fb7364aa738b3506a2d99e4f3a56e079c0a798e9f4fa5e14c60922f/urllib3-1.26.14.tar.gz"
      sha256 "076907bf8fd355cde77728471316625a4d2f7e713c125f51953bb5b3eecf4f72"
    end

    resource "validators" do
      url "https://files.pythonhosted.org/packages/33/1a/4e4c12982b093796c1ceaff49cbc5998fb3a7866da755f8e7a1a40b8fda4/validators-0.18.2.tar.gz"
      sha256 "37cd9a9213278538ad09b5b9f9134266e7c226ab1fede1d500e29e0a8fbb9ea6"
    end

    def install
      virtualenv_install_with_resources
    end
  else
    if OS.mac?
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.4.11/sym-cli-darwin-x64.tar.gz"
      sha256 "818075d489402ca453852405e74159eaa4ff2a6451ee1071e070dcb80b088d6e"
    else
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.4.11/sym-cli-linux-x64.tar.gz"
      sha256 "521df17fa95d4cea14a5fb7f42ff1ee9b1096593601afdeda8b8b5053cd8cfc8"
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
