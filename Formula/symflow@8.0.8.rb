# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class SymflowAT808 < Formula
  desc "CLI to deploy Sym Flows"
  homepage "https://docs.symops.com"
  version "8.0.8"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/7f/37/41a40456d8e6b553aa10a946c41987dbdc850cbe94a688d93d04d5c0de18/sym_flow_cli-8.0.8.tar.gz"
    sha256 "f2faf6c66845f8529c01389a8f55dc159051ccf883626ffaa77ee9a490e0d2b8"

    bottle do
    end

    depends_on "python@3.8"

    resource "auth0-python" do
      url "https://files.pythonhosted.org/packages/79/06/3334c49f2fe98e6e19f31689fa3654372910c865428b2239720f4253ae60/auth0-python-3.24.1.tar.gz"
      sha256 "62c2e177b9517879bd8632da9eb7668aedd5775fddea87b0e0e1e9a89b9dd096"
    end

    resource "blessed" do
      url "https://files.pythonhosted.org/packages/25/ae/92e9968ad23205389ec6bd82e2d4fca3817f1cdef34e10aa8d529ef8b1d7/blessed-1.20.0.tar.gz"
      sha256 "2cdd67f8746e048f00df47a2880f4d6acbcdb399031b604e34ba8f71d5787680"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/98/98/c2ff18671db109c9f10ed27f5ef610ae05b73bd876664139cf95bd1429aa/certifi-2023.7.22.tar.gz"
      sha256 "539cc1d13202e33ca466e88b2807e29f4c13049d6d87031a3c110744495cb082"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/68/ce/95b0bae7968c65473e1298efb042e10cafc7bafc14d9e4f154008241c91d/cffi-1.16.0.tar.gz"
      sha256 "bcb3ef43e58665bbda2fb198698fcae6776483e0c4a631aa5647806c25e02cc0"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/cf/ac/e89b2f2f75f51e9859979b56d2ec162f7f893221975d244d8d5277aa9489/charset-normalizer-3.3.0.tar.gz"
      sha256 "63563193aec44bce707e0c5ca64ff69fa72ed7cf34ce6e11d5127555756fd2f6"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
      sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/cc/98/8a258ab4787e6f835d350639792527d2eb7946ff9fc0caca9c3f4cf5dcfe/cryptography-3.4.8.tar.gz"
      sha256 "94cc5ed4ceaefcbe5bf38c8fba6a21fc1d365bb8fb826ea1688e3370b2e24a1c"
    end

    resource "idna" do
      url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
      sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
    end

    resource "inflection" do
      url "https://files.pythonhosted.org/packages/e1/7e/691d061b7329bc8d54edbf0ec22fbfb2afe61facb681f9aaa9bff7a27d04/inflection-0.5.1.tar.gz"
      sha256 "1a29730d366e996aaacffb2f1f1cb9593dc38e2ddd30c91250c6dde09ea9b417"
    end

    resource "inquirer" do
      url "https://files.pythonhosted.org/packages/5e/e6/12d65e1a78168741cd9a3a1bd47ee609493fe0be92cb6c94d96991cc6ecd/inquirer-2.10.1.tar.gz"
      sha256 "e9876258183e24f6e8c44136b04f6f2e18dd6684aee59b86a8057c50601a6523"
    end

    resource "lark" do
      url "https://files.pythonhosted.org/packages/85/70/4465b0b7dc6ea72cc2c4ea25a2c6ad62cca7918eda030db36a4c11f6f5d9/lark-1.1.7.tar.gz"
      sha256 "be7437bf1f37ab08b355f29ff2571d77d777113d0a8c4352b0c513dced6c5a1e"
    end

    resource "pkce" do
      url "https://files.pythonhosted.org/packages/29/ea/ddd845c2ec21bf1e8555c782b32dc39b82f0b12764feb9f73ccbb2470f13/pkce-1.0.3.tar.gz"
      sha256 "9775fd76d8a743d39b87df38af1cd04a58c9b5a5242d5a6350ef343d06814ab6"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/35/00/0f230921ba852226275762ea3974b87eeca36e941a13cd691ed296d279e5/portalocker-2.8.2.tar.gz"
      sha256 "2b035aa7828e46c58e9b31390ee1f169b98e1066ab10b9a6a861fe7e25ee4f33"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
      sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end

    resource "pydantic" do
      url "https://files.pythonhosted.org/packages/51/cd/721eb771f3f09f60de0807e240c3acf44c38828d0ced869fe8df7e79801b/pydantic-1.10.13.tar.gz"
      sha256 "32c8b48dcd3b2ac4e78b0ba4af3a2c2eb6048cb75202f0ea7b34feb740efc340"
    end

    resource "PyJWT" do
      url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
      sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
    end

    resource "python-editor" do
      url "https://files.pythonhosted.org/packages/0a/85/78f4a216d28343a67b7397c99825cff336330893f00601443f7c7b2f2234/python-editor-1.0.4.tar.gz"
      sha256 "51fda6bcc5ddbbb7063b2af7509e43bd84bfc32a4ff71349ec7847713882327b"
    end

    resource "python-hcl2" do
      url "https://files.pythonhosted.org/packages/ef/94/cc6f7100a857a5a4a676c2c71322ca476051278fad4ec956f0116c1d3834/python-hcl2-4.3.2.tar.gz"
      sha256 "7122661438be27ccd8b8f3db71969d8ef2cce3b3cf183e88f8172575e7405a65"
    end

    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
      sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
    end

    resource "readchar" do
      url "https://files.pythonhosted.org/packages/a1/57/439aaa28659e66265518232bf4291ae5568aa01cd9e0e0f6f8fe3b300e9e/readchar-4.0.5.tar.gz"
      sha256 "08a456c2d7c1888cde3f4688b542621b676eb38cd6cfed7eb6cb2e2905ddc826"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
      sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end

    resource "semver" do
      url "https://files.pythonhosted.org/packages/31/a9/b61190916030ee9af83de342e101f192bbb436c59be20a4cb0cdb7256ece/semver-2.13.0.tar.gz"
      sha256 "fa0fe2722ee1c3f57eac478820c3a5ae2f624af8264cbdf9000c980ff7f75e3f"
    end

    resource "sentry-sdk" do
      url "https://files.pythonhosted.org/packages/29/45/2c3558c8b47d8b763413c5bbaff68b8c9335e9fe8419a8bd85950aaaa3ec/sentry-sdk-1.31.0.tar.gz"
      sha256 "6de2e88304873484207fed836388e422aeff000609b104c802749fd89d56ba5b"
    end

    resource "six" do
      url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
      sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end

    resource "tabulate" do
      url "https://files.pythonhosted.org/packages/7a/53/afac341569b3fd558bf2b5428e925e2eb8753ad9627c1f9188104c6e0c4a/tabulate-0.8.10.tar.gz"
      sha256 "6c57f3f3dd7ac2782770155f3adb2db0b1a269637e42f27599925e64b114f519"
    end

    resource "typing-extensions" do
      url "https://files.pythonhosted.org/packages/1f/7a/8b94bb016069caa12fc9f587b28080ac33b4fbb8ca369b98bc0a4828543e/typing_extensions-4.8.0.tar.gz"
      sha256 "df8e4339e9cb77357558cbdbceca33c303714cf861d1eef15e1070055ae8b7ef"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/8b/00/db794bb94bf09cadb4ecd031c4295dd4e3536db4da958e20331d95f1edb7/urllib3-2.0.6.tar.gz"
      sha256 "b19e1a85d206b56d7df1d5e683df4a7725252a964e3993648dd0fb5a1c157564"
    end

    resource "wcwidth" do
      url "https://files.pythonhosted.org/packages/cb/ee/20850e9f388d8b52b481726d41234f67bc89a85eeade6e2d6e2965be04ba/wcwidth-0.2.8.tar.gz"
      sha256 "8705c569999ffbb4f6a87c6d1b80f324bd6db952f5eb0b95bc07517f4c1813d4"
    end

    def install
      virtualenv_install_with_resources
    end
  else
    if OS.mac?
      if Hardware::CPU.arm?
  url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v8.0.8/sym-flow-cli-darwin-aarch64.tar.gz"
  sha256 "796ac8aba42494d0726fbdf664f00b50ca97a8fe057b3d2b7d01bc0f75c9d2bd"
else
  url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v8.0.8/sym-flow-cli-darwin-x86_64.tar.gz"
  sha256 "4fb713d492a71599c6c0e9e679eb12a9f737dfd48025a0f72d6121f689c72caa"
end
    else
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v8.0.8/sym-flow-cli-linux-x64.tar.gz"
      sha256 "3b8f8f4164c89b1b26592b5fefd8cbc393c63ed1140fac2892ab83144f6f43d8"
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
