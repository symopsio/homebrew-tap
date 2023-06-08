# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class SymflowAT802 < Formula
  desc "CLI to deploy Sym Flows"
  homepage "https://docs.symops.com"
  version "8.0.2"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/f0/e6/93d09c1f95340a7bc413cc4f5c6d6a8b458f37670ccdf7bfa5022dc23842/sym_flow_cli-8.0.2.tar.gz"
    sha256 "ad93afcb995476096105eaa146707250f28e2e829cb082600def0d469aafc028"

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

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/2e/bf/7accc2a580b24443e157108107584ed4feace4bb5aef4e6a4897e6f2beb8/boto3-1.26.149.tar.gz"
      sha256 "9dde9b81a04bf3ec346fbf9a2d005fd22604adf039f1a4d91494e1787a2484e2"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/32/2b/9f342b91b4b2f04282237e12d189a55fb9d307c57e843db8ce19a0940895/botocore-1.29.149.tar.gz"
      sha256 "2996117aac40e8c30a41e01b16f75f14f1a51fc2fa27ce9090eeece045f0ac35"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/93/71/752f7a4dd4c20d6b12341ed1732368546bc0ca9866139fe812f6009d9ac7/certifi-2023.5.7.tar.gz"
      sha256 "0f0d56dc5a6ad56fd4ba36484d6cc34451e1c6548c61daad8c320169f91eddc7"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
      sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/ff/d7/8d757f8bd45be079d76309248845a04f09619a7b17d6dfc8c9ff6433cac2/charset-normalizer-3.1.0.tar.gz"
      sha256 "34e0a2f9c370eb95597aae63bf85eb5e96826d81e3dcf88b8886012906f509b5"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
      sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
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

    resource "jmespath" do
      url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
      sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end

    resource "lark" do
      url "https://files.pythonhosted.org/packages/a2/25/8e16de418fc83bb00dabaf8c7110bc45a90bf5481a70aa5f1668fcea73bc/lark-1.1.5.tar.gz"
      sha256 "4b534eae1f9af5b4ea000bea95776350befe1981658eea3820a01c37e504bb4d"
    end

    resource "pkce" do
      url "https://files.pythonhosted.org/packages/29/ea/ddd845c2ec21bf1e8555c782b32dc39b82f0b12764feb9f73ccbb2470f13/pkce-1.0.3.tar.gz"
      sha256 "9775fd76d8a743d39b87df38af1cd04a58c9b5a5242d5a6350ef343d06814ab6"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/1f/f8/969e6f280201b40b31bcb62843c619f343dcc351dff83a5891530c9dd60e/portalocker-2.7.0.tar.gz"
      sha256 "032e81d534a88ec1736d03f780ba073f047a06c478b06e2937486f334e955c51"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
      sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end

    resource "pydantic" do
      url "https://files.pythonhosted.org/packages/ec/0a/cf955f8bb3b9498d554522cfe7cb9b019ba9f8b86e2879009f604207b72c/pydantic-1.10.9.tar.gz"
      sha256 "95c70da2cd3b6ddf3b9645ecaa8d98f3d80c606624b6d245558d202cd23ea3be"
    end

    resource "PyJWT" do
      url "https://files.pythonhosted.org/packages/e0/f0/9804c72e9a314360c135f42c434eb42eaabb5e7ebad760cbd8fc7023be38/PyJWT-2.7.0.tar.gz"
      sha256 "bd6ca4a3c4285c1a2d4349e5a035fdf8fb94e04ccd0fcbe6ba289dae9cc3e074"
    end

    resource "python-dateutil" do
      url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
      sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
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
      url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
      sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
    end

    resource "readchar" do
      url "https://files.pythonhosted.org/packages/a1/57/439aaa28659e66265518232bf4291ae5568aa01cd9e0e0f6f8fe3b300e9e/readchar-4.0.5.tar.gz"
      sha256 "08a456c2d7c1888cde3f4688b542621b676eb38cd6cfed7eb6cb2e2905ddc826"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
      sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/49/bd/def2ab4c04063a5e114963aae90bcd3e3aca821a595124358b3b00244407/s3transfer-0.6.1.tar.gz"
      sha256 "640bb492711f4c0c0905e1f62b6aaeb771881935ad27884852411f8e9cacbca9"
    end

    resource "semver" do
      url "https://files.pythonhosted.org/packages/31/a9/b61190916030ee9af83de342e101f192bbb436c59be20a4cb0cdb7256ece/semver-2.13.0.tar.gz"
      sha256 "fa0fe2722ee1c3f57eac478820c3a5ae2f624af8264cbdf9000c980ff7f75e3f"
    end

    resource "sentry-sdk" do
      url "https://files.pythonhosted.org/packages/69/e5/e5f71d62c629b5667c38824ad150a86d77ab010adafc9ef20f71ba939e82/sentry-sdk-1.25.1.tar.gz"
      sha256 "aa796423eb6a2f4a8cd7a5b02ba6558cb10aab4ccdc0537f63a47b038c520c38"
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
      url "https://files.pythonhosted.org/packages/42/56/cfaa7a5281734dadc842f3a22e50447c675a1c5a5b9f6ad8a07b467bffe7/typing_extensions-4.6.3.tar.gz"
      sha256 "d91d5919357fe7f681a9f2b5b4cb2a5f1ef0a1e9f59c4d8ff0d3491e05c0ffd5"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/e2/7d/539e6f0cf9f0b95b71dd701a56dae89f768cd39fd8ce0096af3546aeb5a3/urllib3-1.26.16.tar.gz"
      sha256 "8f135f6502756bde6b2a9b28989df5fbe87c9970cecaa69041edcce7f0589b14"
    end

    resource "wcwidth" do
      url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
      sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
    end

    def install
      virtualenv_install_with_resources
    end
  else
    if OS.mac?
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v8.0.2/sym-flow-cli-darwin-x64.tar.gz"
      sha256 "4c343b79ab25740d3489fc35063bac5c551364b5b62fcb4391434346af7b517f"
    else
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v8.0.2/sym-flow-cli-linux-x64.tar.gz"
      sha256 "92dd52927d51032b538da9c0bb37c6616b78df9975ebcca395ed564d06d17ac8"
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
