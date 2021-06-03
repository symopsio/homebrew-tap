# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class Symflow < Formula
  desc "CLI to deploy Sym Flows"
  homepage "https://docs.symops.com"
  version "0.1.27"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/ca/b2/a6fd5b1728485c3a6d9ab1f8272eb8114007e42e4acea0da8acb79bcf93b/sym-flow-cli-0.1.27.tar.gz"
    sha256 "2706194a74a62c1f2fb6e7558aa195a15616a2b93f85ce1fd927dad4a9fba10a"

    bottle do
    end

    depends_on "python@3.8"

    resource "analytics-python" do
      url "https://files.pythonhosted.org/packages/cf/53/02dd86545bef7bb2a0001152a35de404dcace4feca8e0198d3a6a0a70ebd/analytics-python-1.3.1.tar.gz"
      sha256 "a658651c9e77ac716780b302be9619f590a9017122e484f220859ab5bccd8408"
    end

    resource "backoff" do
      url "https://files.pythonhosted.org/packages/55/52/5c209d0e9f1ad857573be96b285626d5e081d86dd50d7617ff0874685dd4/backoff-1.10.0.tar.gz"
      sha256 "b8fba021fac74055ac05eb7c7bfce4723aedde6cd0a504e5326bcb0bdd6d19a4"
    end

    resource "beautifulsoup4" do
      url "https://files.pythonhosted.org/packages/6b/c3/d31704ae558dcca862e4ee8e8388f357af6c9d9acb0cad4ba0fbbd350d9a/beautifulsoup4-4.9.3.tar.gz"
      sha256 "84729e322ad1d5b4d25f805bfa05b902dd96450f43842c4e99067d5e1369eb25"
    end

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/06/ca/151d6af767ef03eacc40b90571e22c0febb7594d7e1f19a297ac7ad9c935/boto3-1.17.86.tar.gz"
      sha256 "4f15867701b28ca78eb56cfc4ff5f0e5ee7db42558dbc445f1a7395e467ac3e9"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/de/bc/f6941643657202082fe5b5a82e187c320caeb3964a084d34fb7f0ed08720/botocore-1.20.86.tar.gz"
      sha256 "bbdfd2adedb0cc9117cf411ef51cbd8fc19798e21e414f831ad9781e507ff1da"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz"
      sha256 "2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee"
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

    resource "click-log" do
      url "https://files.pythonhosted.org/packages/22/44/3d73579b547f0790a2723728088c96189c8b52bd2ee3c3de8040efc3c1b8/click-log-0.3.2.tar.gz"
      sha256 "16fd1ca3fc6b16c98cea63acf1ab474ea8e676849dc669d86afafb0ed7003124"
    end

    resource "click-option-group" do
      url "https://files.pythonhosted.org/packages/3c/86/5de6d909d9dcc85627a178788ec3e8c3ef81cda175badb48ad0bb582628d/click-option-group-0.5.3.tar.gz"
      sha256 "a6e924f3c46b657feb5b72679f7e930f8e5b224b766ab35c91ae4019b4e0615e"
    end

    resource "colorama" do
      url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
      sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
    end

    resource "contextlib2" do
      url "https://files.pythonhosted.org/packages/02/54/669207eb72e3d8ae8b38aa1f0703ee87a0e9f88f30d3c0a47bebdb6de242/contextlib2-0.6.0.post1.tar.gz"
      sha256 "01f490098c18b19d2bd5bb5dc445b2054d2fa97f09a4280ba2c5f3c394c8162e"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/d4/85/38715448253404186029c575d559879912eb8a1c5d16ad9f25d35f7c4f4c/cryptography-3.3.2.tar.gz"
      sha256 "5a60d3780149e13b7a6ff7ad6526b38846354d11a15e21068e57073e29e19bed"
    end

    resource "decorator" do
      url "https://files.pythonhosted.org/packages/4f/51/15a4f6b8154d292e130e5e566c730d8ec6c9802563d58760666f1818ba58/decorator-5.0.9.tar.gz"
      sha256 "72ecfba4320a893c53f9706bebb2d55c270c1e51a28789361aa93e4a21319ed5"
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

    resource "monotonic" do
      url ""
      sha256 ""
    end

    resource "pkce" do
      url "https://files.pythonhosted.org/packages/29/ea/ddd845c2ec21bf1e8555c782b32dc39b82f0b12764feb9f73ccbb2470f13/pkce-1.0.3.tar.gz"
      sha256 "9775fd76d8a743d39b87df38af1cd04a58c9b5a5242d5a6350ef343d06814ab6"
    end

    resource "policy-sentry" do
      url "https://files.pythonhosted.org/packages/e6/ac/58bf50d3e2807b44e061ab312d3064c4fcdf28d0df6537357a23c99cc3cf/policy_sentry-0.9.0.tar.gz"
      sha256 "f820b40492dd22237774003d82a8bae6e7e361c271e877fe5460ff19559f075d"
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

    resource "schema" do
      url "https://files.pythonhosted.org/packages/2b/91/42bc143289fd5f032ab1b01c5da32dc162ae808a585122f27ed5bf67268f/schema-0.7.4.tar.gz"
      sha256 "fbb6a52eb2d9facf292f233adcc6008cffd94343c63ccac9a1cb1f3e6de1db17"
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

    resource "soupsieve" do
      url "https://files.pythonhosted.org/packages/c8/3f/e71d92e90771ac2d69986aa0e81cf0dfda6271e8483698f4847b861dd449/soupsieve-2.2.1.tar.gz"
      sha256 "052774848f448cf19c7e959adf5566904d525f33a3f8b6ba6f6f8f26ec7de0cc"
    end

    resource "sym-shared-cli" do
      url "https://files.pythonhosted.org/packages/ed/43/e036146cb5e5ad3bdf5a6ae18ba5f57b813564efd5e819607ffe4e95b720/sym-shared-cli-0.1.10.tar.gz"
      sha256 "c3c24e7ffa8a163dcdbe281afe9caaf37ea1b949df471df6d37b002f6954c3f4"
    end

    resource "tabulate" do
      url "https://files.pythonhosted.org/packages/ae/3d/9d7576d94007eaf3bb685acbaaec66ff4cdeb0b18f1bf1f17edbeebffb0a/tabulate-0.8.9.tar.gz"
      sha256 "eb1d13f25760052e8931f2ef80aaf6045a6cceb47514db8beab24cded16f13a7"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/94/40/c396b5b212533716949a4d295f91a4c100d51ba95ea9e2d96b6b0517e5a5/urllib3-1.26.5.tar.gz"
      sha256 "a7acd0977125325f516bda9735fa7142b909a8d01e8b2e4c8108d0984e6e0098"
    end

    resource "validators" do
      url "https://files.pythonhosted.org/packages/33/1a/4e4c12982b093796c1ceaff49cbc5998fb3a7866da755f8e7a1a40b8fda4/validators-0.18.2.tar.gz"
      sha256 "37cd9a9213278538ad09b5b9f9134266e7c226ab1fede1d500e29e0a8fbb9ea6"
    end

    resource "xattr" do
      url "https://files.pythonhosted.org/packages/c1/74/1ff659d6deb1d2d6babb9483171edfa330264ae2cbf005035bb7a77b07d2/xattr-0.9.7.tar.gz"
      sha256 "b0bbca828e04ef2d484a6522ae7b3a7ccad5e43fa1c6f54d78e24bb870f49d44"
    end

    def install
      virtualenv_install_with_resources
    end
  else
    bottle :unneeded

    if OS.mac?
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v0.1.27/sym-flow-cli-darwin-x64.tar.gz"
      sha256 "b96a01f21c8d5b1cba65046b8d4105bbfae35d81cb95fb46ace5b063d1b90e26"
    else
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v0.1.27/sym-flow-cli-linux-x64.tar.gz"
      sha256 "b6df1960ded5bc8afc5ee70c7d6be4fc26c821545e99cd84cdeabab2157c9ee7"
    end

    def install
      (lib/"symflow").install "lib", "symflow"
      bin.write_exec_script lib/"symflow"/"symflow"
    end
  end

  test do
    assert_match /\d+\.\d+\.\d/, shell_output("#{bin}/symflow version").strip
  end
end
