# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class Symflow < Formula
  desc "CLI to deploy Sym Flows"
  homepage "https://docs.symops.com"
  version "1.0.1"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/eb/f1/8102afe47fd4b1ea020ebd7107bdcf452953adc806340448de7707701f1f/sym-flow-cli-1.0.1.tar.gz"
    sha256 "d017a68c85718e245d5b79b738da41abe7d3ae07c5dd143f50c58c812bd6407d"

    bottle do
    end

    depends_on "python@3.8"

    resource "analytics-python" do
      url "https://files.pythonhosted.org/packages/32/a5/08555aee01e65bfbfba971e4ce993a3fef0aaf965d5e10d872785d883aeb/analytics-python-1.4.0.tar.gz"
      sha256 "a65141ab6e47db396f5bc5708b1db93ff9a99882d81fe808228afd5ebb6dfe5f"
    end

    resource "attrs" do
      url "https://files.pythonhosted.org/packages/ed/d6/3ebca4ca65157c12bd08a63e20ac0bdc21ac7f3694040711f9fd073c0ffb/attrs-21.2.0.tar.gz"
      sha256 "ef6aaac3ca6cd92904cdd0d83f629a15f18053ec84e6432106f7a4d04ae4f5fb"
    end

    resource "backoff" do
      url "https://files.pythonhosted.org/packages/55/52/5c209d0e9f1ad857573be96b285626d5e081d86dd50d7617ff0874685dd4/backoff-1.10.0.tar.gz"
      sha256 "b8fba021fac74055ac05eb7c7bfce4723aedde6cd0a504e5326bcb0bdd6d19a4"
    end

    resource "beautifulsoup4" do
      url "https://files.pythonhosted.org/packages/a1/69/daeee6d8f22c997e522cdbeb59641c4d31ab120aba0f2c799500f7456b7e/beautifulsoup4-4.10.0.tar.gz"
      sha256 "c23ad23c521d818955a4151a67d81580319d4bf548d3d49f4223ae041ff98891"
    end

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/3f/f2/8ea8d8753df82cc7d444644e5666f45c87b1531575055e3c73731aa4cede/boto3-1.18.53.tar.gz"
      sha256 "4c20f183b680f6b02f70fb32b03df8b52ab9e0fc7a48dc309c159babaf5c9497"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/55/ae/2b64ecc8d088db37cb4d50908ba4c2636ce96a99d72ec0104e2ec077a4d2/botocore-1.21.53.tar.gz"
      sha256 "650604ca5231b819d64430c6b2d1748646bab1095a02fb81bad99cd59f6f6cf5"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz"
      sha256 "2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/2e/92/87bb61538d7e60da8a7ec247dc048f7671afe17016cd0008b3b710012804/cffi-1.14.6.tar.gz"
      sha256 "c9a875ce9d7fe32887784274dd533c57909b7b1dcadcc128a2ac21331a9765dd"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/eb/7f/a6c278746ddbd7094b019b08d1b2187101b1f596f35f81dc27f57d8fcf7c/charset-normalizer-2.0.6.tar.gz"
      sha256 "5ec46d183433dcbd0ab716f2d7f29d8dee50505b3fdb40c6b985c7c4f5a3591f"
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
      url "https://files.pythonhosted.org/packages/c7/13/37ea7805ae3057992e96ecb1cffa2fa35c2ef4498543b846f90dd2348d8f/contextlib2-21.6.0.tar.gz"
      sha256 "ab1e2bfe1d01d968e1b7e8d9023bc51ef3509bba217bb730cee3827e1ee82869"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/d4/85/38715448253404186029c575d559879912eb8a1c5d16ad9f25d35f7c4f4c/cryptography-3.3.2.tar.gz"
      sha256 "5a60d3780149e13b7a6ff7ad6526b38846354d11a15e21068e57073e29e19bed"
    end

    resource "decorator" do
      url "https://files.pythonhosted.org/packages/92/3c/34f8448b61809968052882b830f7d8d9a8e1c07048f70deb039ae599f73c/decorator-5.1.0.tar.gz"
      sha256 "e59913af105b9860aa2c8d3272d9de5a56a4e608db9a2f167a8480b323d529a7"
    end

    resource "factory-boy" do
      url "https://files.pythonhosted.org/packages/7e/37/b046abce36a5fc19827e3662fd6c63ae3489b93f96dbd099cd412bbff6c3/factory_boy-3.2.0.tar.gz"
      sha256 "401cc00ff339a022f84d64a4339503d1689e8263a4478d876e58a3295b155c5b"
    end

    resource "Faker" do
      url "https://files.pythonhosted.org/packages/0f/9e/24f46558dbc3b57dcb69c4c8cf08d0270050e268a06b8e0a7b0c63f1e0da/Faker-8.14.1.tar.gz"
      sha256 "17225e20fed6b958108ad278974b5eb63a797496e43d5c337366fa128473d94f"
    end

    resource "idna" do
      url "https://files.pythonhosted.org/packages/cb/38/4c4d00ddfa48abe616d7e572e02a04273603db446975ab46bbcd36552005/idna-3.2.tar.gz"
      sha256 "467fbad99067910785144ce333826c71fb0e63a425657295239737f7ecd125f3"
    end

    resource "immutables" do
      url "https://files.pythonhosted.org/packages/6b/58/c6be0577cccbe1658fcb1ec3673e9ac7508af26a2f5c814cc041c7d21212/immutables-0.14.tar.gz"
      sha256 "a0a1cc238b678455145bae291d8426f732f5255537ed6a5b7645949704c70a78"
    end

    resource "inflection" do
      url "https://files.pythonhosted.org/packages/e1/7e/691d061b7329bc8d54edbf0ec22fbfb2afe61facb681f9aaa9bff7a27d04/inflection-0.5.1.tar.gz"
      sha256 "1a29730d366e996aaacffb2f1f1cb9593dc38e2ddd30c91250c6dde09ea9b417"
    end

    resource "iniconfig" do
      url "https://files.pythonhosted.org/packages/23/a2/97899f6bd0e873fed3a7e67ae8d3a08b21799430fb4da15cfedf10d6e2c2/iniconfig-1.1.1.tar.gz"
      sha256 "bc3af051d7d14b2ee5ef9969666def0cd1a000e121eaea580d4a313df4b37f32"
    end

    resource "jmespath" do
      url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
      sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
    end

    resource "monotonic" do
      url "https://files.pythonhosted.org/packages/ea/ca/8e91948b782ddfbd194f323e7e7d9ba12e5877addf04fb2bf8fca38e86ac/monotonic-1.6.tar.gz"
      sha256 "3a55207bcfed53ddd5c5bae174524062935efed17792e9de2ad0205ce9ad63f7"
    end

    resource "packaging" do
      url "https://files.pythonhosted.org/packages/df/86/aef78bab3afd461faecf9955a6501c4999933a48394e90f03cd512aad844/packaging-21.0.tar.gz"
      sha256 "7dc96269f53a4ccec5c0670940a4281106dd0bb343f47b7471f779df49c2fbe7"
    end

    resource "pkce" do
      url "https://files.pythonhosted.org/packages/29/ea/ddd845c2ec21bf1e8555c782b32dc39b82f0b12764feb9f73ccbb2470f13/pkce-1.0.3.tar.gz"
      sha256 "9775fd76d8a743d39b87df38af1cd04a58c9b5a5242d5a6350ef343d06814ab6"
    end

    resource "pluggy" do
      url "https://files.pythonhosted.org/packages/a1/16/db2d7de3474b6e37cbb9c008965ee63835bba517e22cdb8c35b5116b5ce1/pluggy-1.0.0.tar.gz"
      sha256 "4224373bacce55f955a878bf9cfa763c1e360858e330072059e10bad68531159"
    end

    resource "policy-sentry" do
      url "https://files.pythonhosted.org/packages/e6/ac/58bf50d3e2807b44e061ab312d3064c4fcdf28d0df6537357a23c99cc3cf/policy_sentry-0.9.0.tar.gz"
      sha256 "f820b40492dd22237774003d82a8bae6e7e361c271e877fe5460ff19559f075d"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/38/2e/32172e8418f2ba284cee4fd67cb547d39a7debb3eed37d514da173786112/portalocker-2.3.2.tar.gz"
      sha256 "75cfe02f702737f1726d83e04eedfa0bda2cc5b974b1ceafb8d6b42377efbd5f"
    end

    resource "py" do
      url "https://files.pythonhosted.org/packages/0d/8c/50e9f3999419bb7d9639c37e83fa9cdcf0f601a9d407162d6c37ad60be71/py-1.10.0.tar.gz"
      sha256 "21b81bda15b66ef5e1a777a21c4dcd9c20ad3efd0b3f817e7a809035269e1bd3"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
      sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
    end

    resource "pydantic" do
      url "https://files.pythonhosted.org/packages/b9/d2/12a808613937a6b98cd50d6467352f01322dc0d8ca9fb5b94441625d6684/pydantic-1.8.2.tar.gz"
      sha256 "26464e57ccaafe72b7ad156fdaa4e9b9ef051f69e175dbbb463283000c05ab7b"
    end

    resource "pyparsing" do
      url "https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz"
      sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
    end

    resource "pytest" do
      url "https://files.pythonhosted.org/packages/4b/24/7d1f2d2537de114bdf1e6875115113ca80091520948d370c964b88070af2/pytest-6.2.5.tar.gz"
      sha256 "131b36680866a76e6781d13f101efb86cf674ebb9762eb70d3082b6f29889e89"
    end

    resource "pytest-factoryboy" do
      url "https://files.pythonhosted.org/packages/17/6c/7afac72bfbaa8837da995fcbc2c116a38267b3c49cd6665f3bf80241adb7/pytest-factoryboy-2.1.0.tar.gz"
      sha256 "23bc562ab32cc39eddfbbbf70e618a1b30e834a4cfa451c4bedc36216f0a7b19"
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
      url "https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz"
      sha256 "b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/88/ef/4d1b3f52ae20a7e72151fde5c9f254cd83f8a49047351f34006e517e1655/s3transfer-0.5.0.tar.gz"
      sha256 "50ed823e1dc5868ad40c8dc92072f757aa0e653a192845c94a3b676f4a62da4c"
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

    resource "text-unidecode" do
      url "https://files.pythonhosted.org/packages/ab/e2/e9a00f0ccb71718418230718b3d900e71a5d16e701a3dae079a21e9cd8f8/text-unidecode-1.3.tar.gz"
      sha256 "bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93"
    end

    resource "toml" do
      url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
      sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
    end

    resource "typing-extensions" do
      url "https://files.pythonhosted.org/packages/ed/12/c5079a15cf5c01d7f4252b473b00f7e68ee711be605b9f001528f0298b98/typing_extensions-3.10.0.2.tar.gz"
      sha256 "49f75d16ff11f1cd258e1b988ccff82a3ca5570217d7ad8c5f48205dd99a677e"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/80/be/3ee43b6c5757cabea19e75b8f46eaf05a2f5144107d7db48c7cf3a864f73/urllib3-1.26.7.tar.gz"
      sha256 "4987c65554f7a2dbf30c18fd48778ef124af6fab771a377103da0585e2336ece"
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
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v1.0.1/sym-flow-cli-darwin-x64.tar.gz"
      sha256 "92b8608adefcc63dcb3d753d9358c3d87e2d02edf0241fce0971827a9a2353d4"
    else
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v1.0.1/sym-flow-cli-linux-x64.tar.gz"
      sha256 "83ed10994757c47c8cf0859cd8b9e76e7f1238743bb0043828e64fe6179d1546"
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
