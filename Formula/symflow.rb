# frozen_string_literal: true
# THIS FILE IS GENERATED. DO NOT EDIT DIRECTLY.

class Symflow < Formula
  desc "CLI to deploy Sym Flows"
  homepage "https://docs.symops.com"
  version "4.2.0"
  option "with-source", "Build from source instead of using binary"

  if build.with? "source"
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/90/d6/9a3db4f57e1c9bd2226d3cbc849c853731b1a145bcc047cb2e494a227c22/sym-flow-cli-4.2.0.tar.gz"
    sha256 "8736d7ccea7669a2028693479e8fd9bfd82669bea480b9969bf505a3cdba7653"

    bottle do
    end

    depends_on "python@3.8"

    resource "analytics-python" do
      url "https://files.pythonhosted.org/packages/32/a5/08555aee01e65bfbfba971e4ce993a3fef0aaf965d5e10d872785d883aeb/analytics-python-1.4.0.tar.gz"
      sha256 "a65141ab6e47db396f5bc5708b1db93ff9a99882d81fe808228afd5ebb6dfe5f"
    end

    resource "attrs" do
      url "https://files.pythonhosted.org/packages/1a/cb/c4ffeb41e7137b23755a45e1bfec9cbb76ecf51874c6f1d113984ecaa32c/attrs-22.1.0.tar.gz"
      sha256 "29adc2665447e5191d0e7c568fde78b21f9672d344281d0c6e1ab085429b22b6"
    end

    resource "auth0-python" do
      url "https://files.pythonhosted.org/packages/54/e9/199c75c63c4a1a089c8b6787f53670add486a2d7d6fa0cb8fde32fa11cd6/auth0-python-3.24.0.tar.gz"
      sha256 "88d7bce9472342e77f2f25fd8b060819b3557000e3a43e2618cd7a0fe5212c71"
    end

    resource "backoff" do
      url "https://files.pythonhosted.org/packages/55/52/5c209d0e9f1ad857573be96b285626d5e081d86dd50d7617ff0874685dd4/backoff-1.10.0.tar.gz"
      sha256 "b8fba021fac74055ac05eb7c7bfce4723aedde6cd0a504e5326bcb0bdd6d19a4"
    end

    resource "beautifulsoup4" do
      url "https://files.pythonhosted.org/packages/e8/b0/cd2b968000577ec5ce6c741a54d846dfa402372369b8b6861720aa9ecea7/beautifulsoup4-4.11.1.tar.gz"
      sha256 "ad9aa55b65ef2808eb405f46cf74df7fcb7044d5cbc26487f96eb2ef2e436693"
    end

    resource "blessed" do
      url "https://files.pythonhosted.org/packages/e5/ad/97453480e7bdfce94f05a983cf7ad7f1d90239efee53d5af28e622f0367f/blessed-1.19.1.tar.gz"
      sha256 "9a0d099695bf621d4680dd6c73f6ad547f6a3442fbdbe80c4b1daa1edbc492fc"
    end

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/df/e4/893fc4af6ee0c801725b48ba4d3120705126edab71e0fe84f8eb4850c427/boto3-1.26.4.tar.gz"
      sha256 "244fd0776fc1f69c3ed34f359db7a90a6108372486abc999ce8515a79bbfc86e"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/32/c1/3a3cbbdc58a71c1dfafbeeb79dd09b68a030ff5c52df7ad8e87d5ed57c10/botocore-1.29.4.tar.gz"
      sha256 "fa86747f5092723c0dc7f201a48cdfac3ad8d03dd6cb7abc189abc708be43269"
    end

    resource "certifi" do
      url "https://files.pythonhosted.org/packages/cb/a4/7de7cd59e429bd0ee6521ba58a75adaec136d32f91a761b28a11d8088d44/certifi-2022.9.24.tar.gz"
      sha256 "0d9c601124e5a6ba9712dbc60d9c53c21e34f5f641fe83002317394311bdce14"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
      sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
    end

    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94/charset-normalizer-2.1.1.tar.gz"
      sha256 "5a3d016c7c547f69d6f81fb0db9449ce888b418b5b9952cc5e6e66843e9dd845"
    end

    resource "click" do
      url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
      sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
    end

    resource "click-log" do
      url "https://files.pythonhosted.org/packages/32/32/228be4f971e4bd556c33d52a22682bfe318ffe57a1ddb7a546f347a90260/click-log-0.4.0.tar.gz"
      sha256 "3970f8570ac54491237bcdb3d8ab5e3eef6c057df29f8c3d1151a51a9c23b975"
    end

    resource "click-option-group" do
      url "https://files.pythonhosted.org/packages/4c/29/ff7cd69825b5bfb48e39853b75d5dc2e98a581730f2b6c9c014188730755/click-option-group-0.5.5.tar.gz"
      sha256 "78ee474f07a0ca0ef6c0317bb3ebe79387aafb0c4a1e03b1d8b2b0be1e42fc78"
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
      url "https://files.pythonhosted.org/packages/cc/98/8a258ab4787e6f835d350639792527d2eb7946ff9fc0caca9c3f4cf5dcfe/cryptography-3.4.8.tar.gz"
      sha256 "94cc5ed4ceaefcbe5bf38c8fba6a21fc1d365bb8fb826ea1688e3370b2e24a1c"
    end

    resource "decorator" do
      url "https://files.pythonhosted.org/packages/66/0c/8d907af351aa16b42caae42f9d6aa37b900c67308052d10fdce809f8d952/decorator-5.1.1.tar.gz"
      sha256 "637996211036b6385ef91435e4fae22989472f9d571faba8927ba8253acbc330"
    end

    resource "exceptiongroup" do
      url "https://files.pythonhosted.org/packages/13/55/43ff6658a50a7f722d2f904810b42514c23a5d649d8a5d890cdc16b617de/exceptiongroup-1.0.1.tar.gz"
      sha256 "73866f7f842ede6cb1daa42c4af078e2035e5f7607f0e2c762cc51bb31bbe7b2"
    end

    resource "factory-boy" do
      url "https://files.pythonhosted.org/packages/50/20/18b99c494ba37054bee29a72c4cfc7aa938ed465411f0d66a4ddfb09f7fc/factory_boy-3.2.1.tar.gz"
      sha256 "a98d277b0c047c75eb6e4ab8508a7f81fb03d2cb21986f627913546ef7a2a55e"
    end

    resource "Faker" do
      url "https://files.pythonhosted.org/packages/7b/b4/764f6f08c651b940c65554de0b435b1958ed47144918853bb6ecb52fd422/Faker-15.3.1.tar.gz"
      sha256 "b9dd2fd9a9ac68a4e0c5040cd9e9bfaa099fa8dd15bae5f01f224a45431818d5"
    end

    resource "idna" do
      url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
      sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
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

    resource "inquirer" do
      url "https://files.pythonhosted.org/packages/e5/e3/cd77784d0cca9ab8b5be5a6cd4f72ffec407486207ce4f6edec3fc4b8ece/inquirer-2.10.0.tar.gz"
      sha256 "d6bef9df4d0049fb93ed4e1c1df852e48287331d21e46ed6163b8b2290fc5cb5"
    end

    resource "jmespath" do
      url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
      sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end

    resource "mistune" do
      url "https://files.pythonhosted.org/packages/2d/a4/509f6e7783ddd35482feda27bc7f72e65b5e7dc910eca4ab2164daf9c577/mistune-0.8.4.tar.gz"
      sha256 "59a3429db53c50b5c6bcc8a07f8848cb00d7dc8bdb431a4ab41920d201d4756e"
    end

    resource "monotonic" do
      url "https://files.pythonhosted.org/packages/ea/ca/8e91948b782ddfbd194f323e7e7d9ba12e5877addf04fb2bf8fca38e86ac/monotonic-1.6.tar.gz"
      sha256 "3a55207bcfed53ddd5c5bae174524062935efed17792e9de2ad0205ce9ad63f7"
    end

    resource "packaging" do
      url "https://files.pythonhosted.org/packages/df/9e/d1a7217f69310c1db8fdf8ab396229f55a699ce34a203691794c5d1cad0c/packaging-21.3.tar.gz"
      sha256 "dd47c42927d89ab911e606518907cc2d3a1f38bbd026385970643f9c5b8ecfeb"
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
      url "https://files.pythonhosted.org/packages/a6/5c/57ef8091f9f1d01bf5413fcd0fd1f2f255f45536e42bfd34bc45b6cc2786/portalocker-2.6.0.tar.gz"
      sha256 "964f6830fb42a74b5d32bce99ed37d8308c1d7d44ddf18f3dd89f4680de97b39"
    end

    resource "prompt-toolkit" do
      url "https://files.pythonhosted.org/packages/e2/d9/1009dbb3811fee624af34df9f460f92b51edac528af316eb5770f9fbd2e1/prompt_toolkit-3.0.32.tar.gz"
      sha256 "e7f2129cba4ff3b3656bbdda0e74ee00d2f874a8bcdb9dd16f5fec7b3e173cae"
    end

    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
      sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end

    resource "pydantic" do
      url "https://files.pythonhosted.org/packages/7d/7d/58dd62f792b002fa28cce4e83cb90f4359809e6d12db86eedf26a752895c/pydantic-1.10.2.tar.gz"
      sha256 "91b8e218852ef6007c2b98cd861601c6a09f1aa32bbbb74fab5b1c33d4a1e410"
    end

    resource "PyJWT" do
      url "https://files.pythonhosted.org/packages/75/65/db64904a7f23e12dbf0565b53de01db04d848a497c6c9b87e102f74c9304/PyJWT-2.6.0.tar.gz"
      sha256 "69285c7e31fc44f68a1feb309e948e0df53259d579295e6cfe2b1792329f05fd"
    end

    resource "pyparsing" do
      url "https://files.pythonhosted.org/packages/71/22/207523d16464c40a0310d2d4d8926daffa00ac1f5b1576170a32db749636/pyparsing-3.0.9.tar.gz"
      sha256 "2b020ecf7d21b687f219b71ecad3631f644a47f01403fa1d1036b0c6416d70fb"
    end

    resource "pytest" do
      url "https://files.pythonhosted.org/packages/0b/21/055f39bf8861580b43f845f9e8270c7786fe629b2f8562ff09007132e2e7/pytest-7.2.0.tar.gz"
      sha256 "c4014eb40e10f11f355ad4e3c2fb2c6c6d1919c73f3b5a433de4708202cade59"
    end

    resource "pytest-factoryboy" do
      url "https://files.pythonhosted.org/packages/b7/b8/a6ba47f528098a93c744cd5a819b61b2f9aa1bfb5d372acd267eff22b3e0/pytest-factoryboy-2.5.0.tar.gz"
      sha256 "8abcfe5396a2cadf0b2d6fc1ba607d05f191db915eac95733ab741cb30968a46"
    end

    resource "python-dateutil" do
      url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
      sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
    end

    resource "python-editor" do
      url "https://files.pythonhosted.org/packages/0a/85/78f4a216d28343a67b7397c99825cff336330893f00601443f7c7b2f2234/python-editor-1.0.4.tar.gz"
      sha256 "51fda6bcc5ddbbb7063b2af7509e43bd84bfc32a4ff71349ec7847713882327b"
    end

    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
      sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
    end

    resource "readchar" do
      url "https://files.pythonhosted.org/packages/75/d1/eddb559d5911fd889f2ec0de052a88edd0fa8fc4746f29da0d384d29e10e/readchar-4.0.3.tar.gz"
      sha256 "1d920d0e9ab76ec5d42192a68d15af2562663b5dfbf4a67cf9eba520e1ca57e6"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/a5/61/a867851fd5ab77277495a8709ddda0861b28163c4613b011bc00228cc724/requests-2.28.1.tar.gz"
      sha256 "7c5599b102feddaa661c826c56ab4fee28bfd17f5abca1ebbe3e7f19d7c97983"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/e1/eb/e57c93d5cd5edf8c1d124c831ef916601540db70acd96fa21fe60cef1365/s3transfer-0.6.0.tar.gz"
      sha256 "2ed07d3866f523cc561bf4a00fc5535827981b117dd7876f036b0c1aca42c947"
    end

    resource "schema" do
      url "https://files.pythonhosted.org/packages/4e/e8/01e1b46d9e04cdaee91c9c736d9117304df53361a191144c8eccda7f0ee9/schema-0.7.5.tar.gz"
      sha256 "f06717112c61895cabc4707752b88716e8420a8819d71404501e114f91043197"
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
      url "https://files.pythonhosted.org/packages/f3/03/bac179d539362319b4779a00764e95f7542f4920084163db6b0fd4742d38/soupsieve-2.3.2.post1.tar.gz"
      sha256 "fc53893b3da2c33de295667a0e19f078c14bf86544af307354de5fcf12a3f30d"
    end

    resource "sym-shared-cli" do
      url "https://files.pythonhosted.org/packages/50/3a/25d8f1a1a555a7f51503c42bbfbf0ebea3a9d87f9a94ce635f0518fcdfc8/sym-shared-cli-0.2.3.tar.gz"
      sha256 "df200b8fdb9b427025b049aaf3cc18be4580f4842ac2a9bd41df6e440c0ca605"
    end

    resource "tabulate" do
      url "https://files.pythonhosted.org/packages/7a/53/afac341569b3fd558bf2b5428e925e2eb8753ad9627c1f9188104c6e0c4a/tabulate-0.8.10.tar.gz"
      sha256 "6c57f3f3dd7ac2782770155f3adb2db0b1a269637e42f27599925e64b114f519"
    end

    resource "tomli" do
      url "https://files.pythonhosted.org/packages/c0/3f/d7af728f075fb08564c5949a9c95e44352e23dee646869fa104a3b2060a3/tomli-2.0.1.tar.gz"
      sha256 "de526c12914f0c550d15924c62d72abc48d6fe7364aa87328337a31007fe8a4f"
    end

    resource "typing-extensions" do
      url "https://files.pythonhosted.org/packages/e3/a7/8f4e456ef0adac43f452efc2d0e4b242ab831297f1bac60ac815d37eb9cf/typing_extensions-4.4.0.tar.gz"
      sha256 "1511434bb92bf8dd198c12b1cc812e800d4181cfcb867674e0f8279cc93087aa"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/b2/56/d87d6d3c4121c0bcec116919350ca05dc3afd2eeb7dc88d07e8083f8ea94/urllib3-1.26.12.tar.gz"
      sha256 "3fa96cf423e6987997fc326ae8df396db2a8b7c667747d47ddd8ecba91f4a74e"
    end

    resource "validators" do
      url "https://files.pythonhosted.org/packages/33/1a/4e4c12982b093796c1ceaff49cbc5998fb3a7866da755f8e7a1a40b8fda4/validators-0.18.2.tar.gz"
      sha256 "37cd9a9213278538ad09b5b9f9134266e7c226ab1fede1d500e29e0a8fbb9ea6"
    end

    resource "wcwidth" do
      url "https://files.pythonhosted.org/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
      sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
    end

    resource "xattr" do
      url "https://files.pythonhosted.org/packages/91/ac/5898d1811abc88c3710317243168feff61ce12be220b9c92ee045ecd66c4/xattr-0.9.9.tar.gz"
      sha256 "09cb7e1efb3aa1b4991d6be4eb25b73dc518b4fe894f0915f5b0dcede972f346"
    end

    def install
      virtualenv_install_with_resources
    end
  else
    if OS.mac?
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v4.2.0/sym-flow-cli-darwin-x64.tar.gz"
      sha256 "be7d2f6fd83a4abd4c346dbbde053998160ed0a822c923d8e694ecef7e0eeb9f"
    else
      url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v4.2.0/sym-flow-cli-linux-x64.tar.gz"
      sha256 "0912a9bd858b3f5ff4815bfb6e0fdb95afa4736b6d88e2820c0365fdbc1cb0c5"
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
