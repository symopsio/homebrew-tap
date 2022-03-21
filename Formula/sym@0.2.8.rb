# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class SymAT028 < Formula
  desc "CLI to perform privileged operations with Sym"
  homepage "https://docs.symops.com"
  version "0.2.8"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/38/e5/59eea67208f9c761788d1ee8b89916eb9f8a89cb71ce96d757be7df9f88e/sym-cli-0.2.8.tar.gz"
    sha256 "314989f03ac2c73c79b01df9dbb9431fb4f22fa484c2a72028b57088cf10a1f8"

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
      url "https://files.pythonhosted.org/packages/c6/b3/78537c46ed86cf2b66910714e1f8aa33f916758001bbc09b5618efc03021/boto3-1.21.23.tar.gz"
      sha256 "44a30268702c78aa355a0044fa7fea5f1e7e7c125ad029196028787eea003c2e"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/58/0f/17ea085010d395b497bc432d5a4feb6a67a23a3e5081deadaf2e34840660/botocore-1.24.23.tar.gz"
      sha256 "1c8a77809dd59bf4084780ea1785c38d0ebcacd385d83fb7f6ad81648bbb22dc"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"
      sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/00/9e/92de7e1217ccc3d5f352ba21e52398372525765b2e0c4530e6eb2ba9282a/cffi-1.15.0.tar.gz"
      sha256 "920f0d66a896c2d99f0adbb391f990a84091179542c205fa53ce5787aff87954"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/56/31/7bcaf657fafb3c6db8c787a865434290b726653c912085fbd371e9b92e1c/charset-normalizer-2.0.12.tar.gz"
      sha256 "2857e29ff0d34db842cd7ca3230549d1a697f96ee6d3fb071cfa6c7393832597"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/dd/cf/706c1ad49ab26abed0b77a2f867984c1341ed7387b8030a6aa914e2942a0/click-8.0.4.tar.gz"
      sha256 "8458d7b1287c5fb128c90e23381cf99dcde74beaf6c7ff6384ce84d6fe090adb"
    end

    resource "click-option-group" do
      url "https://files.pythonhosted.org/packages/3c/86/5de6d909d9dcc85627a178788ec3e8c3ef81cda175badb48ad0bb582628d/click-option-group-0.5.3.tar.gz"
      sha256 "a6e924f3c46b657feb5b72679f7e930f8e5b224b766ab35c91ae4019b4e0615e"
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
      url "https://files.pythonhosted.org/packages/66/0c/8d907af351aa16b42caae42f9d6aa37b900c67308052d10fdce809f8d952/decorator-5.1.1.tar.gz"
      sha256 "637996211036b6385ef91435e4fae22989472f9d571faba8927ba8253acbc330"
    end

    resource "idna" do
      url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
      sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
    end

    resource "immutables" do
      url "https://files.pythonhosted.org/packages/6b/58/c6be0577cccbe1658fcb1ec3673e9ac7508af26a2f5c814cc041c7d21212/immutables-0.14.tar.gz"
      sha256 "a0a1cc238b678455145bae291d8426f732f5255537ed6a5b7645949704c70a78"
    end

    resource "jeepney" do
      url "https://files.pythonhosted.org/packages/09/0d/81744e179cf3aede2d117c20c6d5b97a62ffe16b2ca5d856e068e81c7a68/jeepney-0.7.1.tar.gz"
      sha256 "fa9e232dfa0c498bd0b8a3a73b8d8a31978304dcef0515adc859d4e096f96f4f"
    end

    resource "jmespath" do
      url "https://files.pythonhosted.org/packages/06/7e/44686b986ef9ca6069db224651baaa8300b93af2a085a5b135997bf659b3/jmespath-1.0.0.tar.gz"
      sha256 "a490e280edd1f57d6de88636992d05b71e97d69a26a19f058ecf7d304474bf5e"
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
      url "https://files.pythonhosted.org/packages/17/74/f94beb100cf96a3c53133c37d4a181eed190fc117fd20741504af6812c28/policyuniverse-1.4.0.20220110.tar.gz"
      sha256 "116b808554d7ea75efc97b4cb904085546db45934ef315175cb4755c7a4489de"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/dc/60/9646b57d473d38fd23af22f18dce6baa4d591f37024e0c3dcd2d66814d50/portalocker-2.4.0.tar.gz"
      sha256 "a648ad761b8ea27370cb5915350122cd807b820d2193ed5c9cc28f163df637f4"
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
      url "https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77/requests-2.27.1.tar.gz"
      sha256 "68d7c56fd5a8999887728ef304a6d12edc7be74f1cfa47714fc8b414525c9a61"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/7e/19/f82e4af435a19b28bdbfba63f338ea20a264f4df4beaf8f2ab9bfa34072b/s3transfer-0.5.2.tar.gz"
      sha256 "95c58c194ce657a5f4fb0b9e60a84968c808888aed628cd98ab8771fe1db98ed"
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
      url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
      sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end

    resource "sym-shared-cli" do
      url "https://files.pythonhosted.org/packages/48/f5/cfd096c9ce370cf70c197f02115aec5fd991b54315e296bb29bc2bd3aa36/sym-shared-cli-0.2.2.tar.gz"
      sha256 "42e36d24c4e7ea1981998f3b0e461254982651682924301085f3d9a20e64bac6"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/1b/a5/4eab74853625505725cefdf168f48661b2cd04e7843ab836f3f63abf81da/urllib3-1.26.9.tar.gz"
      sha256 "aabaf16477806a5e1dd19aa41f8c2b7950dd3c746362d7e3223dbe6de6ac448e"
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
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.2.8/sym-cli-darwin-x64.tar.gz"
      sha256 "34a43df89e0b45edb790f7323a77181d336183df1ef661bd18b4df9f1ec4047f"
    else
      url "https://github.com/symopsio/sym-cli-releases/releases/download/v0.2.8/sym-cli-linux-x64.tar.gz"
      sha256 "1cb68e3c73ea5241f9f16d2225292a82e4b8cb67b0057cf759b17a860a8fdd7e"
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
