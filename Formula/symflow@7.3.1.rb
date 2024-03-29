# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class SymflowAT731 < Formula
  desc "CLI to deploy Sym Flows"
  homepage "https://docs.symops.com"
  version "7.3.1"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/e8/2c/e8c213e1ed29915f818cd903181ba8d29a5e38c6564cc0fa5dfb0e826118/sym_flow_cli-7.3.1.tar.gz"
    sha256 "03ffaa2c88cb6032a9b879008c0be9c015a9a467d05a93b6dc4a57eebcd4e0b7"

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
      url "https://files.pythonhosted.org/packages/0a/43/d08b5f6170a878d88c5bec8ba372f6ad13e0aaf588df29de282cf53e2484/boto3-1.26.107.tar.gz"
      sha256 "816a198a6cc4f283af6b21439d85be6dbe4b73c2232dd906c6bafb4fece28d19"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/ed/ff/902637ad16907d0575693dacd249ef38517e92b83953bc5050f407fef018/botocore-1.29.107.tar.gz"
      sha256 "f63942b4b7248c0b3d6ecbc2852cf0787c23ace2a91a012f7ee0b3ae3eb08f4f"
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
      url "https://files.pythonhosted.org/packages/43/5f/e53a850fd32dddefc998b6bfcbda843d4ff5b0dcac02a92e414ba6c97d46/pydantic-1.10.7.tar.gz"
      sha256 "cfc83c0678b6ba51b0532bea66860617c4cd4251ecf76e9846fa5a9f3454e97e"
    end

    resource "PyJWT" do
      url "https://files.pythonhosted.org/packages/75/65/db64904a7f23e12dbf0565b53de01db04d848a497c6c9b87e102f74c9304/PyJWT-2.6.0.tar.gz"
      sha256 "69285c7e31fc44f68a1feb309e948e0df53259d579295e6cfe2b1792329f05fd"
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
      url "https://files.pythonhosted.org/packages/0b/8c/9c7858604212b25e040652fba3eb06514b363b857544f7321ca97185f001/python-hcl2-4.3.0.tar.gz"
      sha256 "41e37e2a9b3d223da5e8ebc99e72b40d2315087e966f458f7eac13c7831d9b9e"
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
      url "https://files.pythonhosted.org/packages/9d/ee/391076f5937f0a8cdf5e53b701ffc91753e87b07d66bae4a09aa671897bf/requests-2.28.2.tar.gz"
      sha256 "98b1b2782e3c6c4904938b84c0eb932721069dfdb9134313beff7c83c2df24bf"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/e1/eb/e57c93d5cd5edf8c1d124c831ef916601540db70acd96fa21fe60cef1365/s3transfer-0.6.0.tar.gz"
      sha256 "2ed07d3866f523cc561bf4a00fc5535827981b117dd7876f036b0c1aca42c947"
    end

    resource "semver" do
      url "https://files.pythonhosted.org/packages/31/a9/b61190916030ee9af83de342e101f192bbb436c59be20a4cb0cdb7256ece/semver-2.13.0.tar.gz"
      sha256 "fa0fe2722ee1c3f57eac478820c3a5ae2f624af8264cbdf9000c980ff7f75e3f"
    end

    resource "sentry-sdk" do
      url "https://files.pythonhosted.org/packages/f3/e4/b82bfa04cf41fb18650fce8f0eff50816ada964115e90533a872ac3946d6/sentry-sdk-1.19.1.tar.gz"
      sha256 "7ae78bd921981a5010ab540d6bdf3b793659a4db8cccf7f16180702d48a80d84"
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
      url "https://files.pythonhosted.org/packages/d3/20/06270dac7316220643c32ae61694e451c98f8caf4c8eab3aa80a2bedf0df/typing_extensions-4.5.0.tar.gz"
      sha256 "5cb5f4a79139d699607b3ef622a1dedafa84e115ab0024e0d9c044a9479ca7cb"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/21/79/6372d8c0d0641b4072889f3ff84f279b738cd8595b64c8e0496d4e848122/urllib3-1.26.15.tar.gz"
      sha256 "8a388717b9476f934a21484e8c8e61875ab60644d29b9b39e11e4b9dc1c6b305"
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
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v7.3.1/sym-flow-cli-darwin-x64.tar.gz"
      sha256 "5d59bf6d6ed45d92384c2377b1f44d8b86525ff6d71d9f6557fda7d4db6222ac"
    else
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v7.3.1/sym-flow-cli-linux-x64.tar.gz"
      sha256 "1c5c9d722b8d66be25505f2ae8e22545b15e804047810e7aa9089c3a7e372221"
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
