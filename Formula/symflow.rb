class Symflow < Formula
  desc "CLI to deploy Sym flows"
  homepage "https://docs.symops.com"
  version "0.0.64a1"

  if OS.mac?
    url "https://github.com/symopsio/sym-flow-cli-releases/releases/download/v0.0.64a1/sym-flow-cli-darwin-x64.tar.gz"
    sha256 "2e4b015d9afeaa504272fd1c74314a965ed8ba2aeb3a10633d4e8406bd582a7a"
    bottle :unneeded

    def install
      lib.install "lib", "sym"
      bin.write_exec_script lib/"sym"
    end
  else
    include Language::Python::Virtualenv

    url "https://files.pythonhosted.org/packages/b9/60/43ece57f3ab68fee5de90379eb91084768a610bc5b49b5491de45096bd69/sym-flow-cli-0.0.62.tar.gz"
    sha256 "cd1dd8ce8fa73f8654ac6bc66062bc9b6dbd619cf3d750758c062a025c54c611"

    bottle do
    end

    depends_on "python@3.8"

    resource "analytics-python" do
      url "https://files.pythonhosted.org/packages/6d/ae/affa8190ad884f9654483201f6fe71465bd59263b3365c0e3b544cd36203/analytics-python-1.2.9.tar.gz"
      sha256 "f3d1ca27cb277da67c10d71a5c9c593d2a9ec99109e31409ab771b44821a86bf"
    end

    resource "beautifulsoup4" do
      url "https://files.pythonhosted.org/packages/6b/c3/d31704ae558dcca862e4ee8e8388f357af6c9d9acb0cad4ba0fbbd350d9a/beautifulsoup4-4.9.3.tar.gz"
      sha256 "84729e322ad1d5b4d25f805bfa05b902dd96450f43842c4e99067d5e1369eb25"
    end

    resource "boto3" do
      url "https://files.pythonhosted.org/packages/c9/65/c94f2db83968a9ad693442be09519e6780918658867da1fabb77bde2c6d8/boto3-1.16.55.tar.gz"
      sha256 "b5052144034e490358c659d0e480c17a4e604fd3aee9a97ddfe6e361a245a4a5"
    end

    resource "botocore" do
      url "https://files.pythonhosted.org/packages/84/0c/52990a6d6839e6dfea058b1840b8b6ed917c20351ad8d7a875321f368b25/botocore-1.19.55.tar.gz"
      sha256 "b34327d84b3bb5620fb54603677a9a973b167290c2c1e7ab69c4a46b201c6d46"
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

    resource "click-log" do
      url "https://files.pythonhosted.org/packages/22/44/3d73579b547f0790a2723728088c96189c8b52bd2ee3c3de8040efc3c1b8/click-log-0.3.2.tar.gz"
      sha256 "16fd1ca3fc6b16c98cea63acf1ab474ea8e676849dc669d86afafb0ed7003124"
    end

    resource "click-option-group" do
      url "https://files.pythonhosted.org/packages/e5/cb/c5698a6434db57236cdab8852d0305ad71a033f29d8a769faabf35f96e29/click-option-group-0.5.2.tar.gz"
      sha256 "743733a0f564438b6b761f49ddf37d845f9a662294ecabe0e832e597208bcf31"
    end

    resource "contextlib2" do
      url "https://files.pythonhosted.org/packages/02/54/669207eb72e3d8ae8b38aa1f0703ee87a0e9f88f30d3c0a47bebdb6de242/contextlib2-0.6.0.post1.tar.gz"
      sha256 "01f490098c18b19d2bd5bb5dc445b2054d2fa97f09a4280ba2c5f3c394c8162e"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/b7/82/f7a4ddc1af185936c1e4fa000942ffa8fb2d98cff26b75afa7b3c63391c4/cryptography-3.3.1.tar.gz"
      sha256 "7e177e4bea2de937a584b13645cab32f25e3d96fc0bc4a4cf99c27dc77682be6"
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

    resource "pkce" do
      url "https://files.pythonhosted.org/packages/3f/36/fbd58538d32c78a60a707add27b0abd3830d1226fbd7477646c115a06d4c/pkce-1.0.2.tar.gz"
      sha256 "87c0480cf22ffc56cc124879d651b0c9c559c71974b7c7082a6e60bfd180da27"
    end

    resource "policy-sentry" do
      url "https://files.pythonhosted.org/packages/e6/ac/58bf50d3e2807b44e061ab312d3064c4fcdf28d0df6537357a23c99cc3cf/policy_sentry-0.9.0.tar.gz"
      sha256 "f820b40492dd22237774003d82a8bae6e7e361c271e877fe5460ff19559f075d"
    end

    resource "policyuniverse" do
      url "https://files.pythonhosted.org/packages/ff/ba/9b87fe2c09502489708325c1ea118c1ab2d238678ed4bb6655c64f63ce23/policyuniverse-1.3.2.20210114.tar.gz"
      sha256 "0b10539f56485faab4381bbed5ac38f71aef2c0baccf637ed4b9acf281944ab9"
    end

    resource "portalocker" do
      url "https://files.pythonhosted.org/packages/df/48/62cf97ff7d2233e7db29dfb83f1584e26289e88af8af39de1a76629ac487/portalocker-2.0.0.tar.gz"
      sha256 "14487eed81aa914127edf0284e29c7ca8842c05bb33d96dc7e4bdb47282d26e4"
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
      url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
      sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
    end

    resource "requests" do
      url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
      sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
    end

    resource "s3transfer" do
      url "https://files.pythonhosted.org/packages/08/e1/3ee2096ebaeeb8c186d20ed16c8faf4a503913e5c9a0e14cd6b8ffc405a3/s3transfer-0.3.4.tar.gz"
      sha256 "7fdddb4f22275cf1d32129e21f056337fd2a80b6ccef1664528145b72c49e6d2"
    end

    resource "schema" do
      url "https://files.pythonhosted.org/packages/0d/de/84afc54d41aea9787c6d8814391a2d296a8240eef5b59d11704a82d82064/schema-0.7.2.tar.gz"
      sha256 "b536f2375b49fdf56f36279addae98bd86a8afbd58b3c32ce363c464bed5fc1c"
    end

    resource "SecretStorage" do
      url "https://files.pythonhosted.org/packages/ec/6e/2b7f0a6d85e20c918cce50ea89e5f72081d56088c98c4fa71e483c3b2826/SecretStorage-3.3.0.tar.gz"
      sha256 "30cfdef28829dad64d6ea1ed08f8eff6aa115a77068926bcc9f5225d5a3246aa"
    end

    resource "sentry-sdk" do
      url "https://files.pythonhosted.org/packages/0c/24/60edf9808f2461e108f5148b9093ec2de5957fe42502759804ac88b440d5/sentry-sdk-0.19.5.tar.gz"
      sha256 "737a094e49a529dd0fdcaafa9e97cf7c3d5eb964bd229821d640bc77f3502b3f"
    end

    resource "six" do
      url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
      sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
    end

    resource "soupsieve" do
      url "https://files.pythonhosted.org/packages/58/5d/445e21e92345848305eecf473338e9ec7ed8905b99ea78415042060127fc/soupsieve-2.1.tar.gz"
      sha256 "6dc52924dc0bc710a5d16794e6b3480b2c7c08b07729505feab2b2c16661ff6e"
    end

    resource "sym-cli" do
      url "https://files.pythonhosted.org/packages/e5/e3/16e35c7a9de008b9a9445a87ef2dd569b7e32399726a4ebeaad21e906095/sym-cli-0.0.60.tar.gz"
      sha256 "617ae9110ad2c4aef9b18151deb497f36d9033e74ff39aecb8f201c353c20e59"
    end

    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/29/e6/d1a1d78c439cad688757b70f26c50a53332167c364edb0134cadd280e234/urllib3-1.26.2.tar.gz"
      sha256 "19188f96923873c92ccb987120ec4acaa12f0461fa9ce5d3d0772bc965a39e08"
    end

    resource "validators" do
      url "https://files.pythonhosted.org/packages/33/1a/4e4c12982b093796c1ceaff49cbc5998fb3a7866da755f8e7a1a40b8fda4/validators-0.18.2.tar.gz"
      sha256 "37cd9a9213278538ad09b5b9f9134266e7c226ab1fede1d500e29e0a8fbb9ea6"
    end

    def install
      virtualenv_install_with_resources
    end
  end

  test do
    assert_match /\d+\.\d+\.\d/, shell_output("#{bin}/symflow version").strip
  end
end
