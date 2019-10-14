class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.4/AppleSimulatorUtils-0.7.4.tar.gz'
  sha256 'ff02f8a8a8c17289f35d843c5edbcf084fd86778b71bdb35a0a6b3bedb440963'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.4'
    sha256 '089e0e7a01be1ab7145d9a48a8e961c412e080963f2764df6cc19e9e6ef0c2f9' => :catalina
    sha256 'dfa08a61d3659fa25437e701eb61186068e22deb96a1534c73880ebc2fc0c376' => :mojave
    sha256 'dfa08a61d3659fa25437e701eb61186068e22deb96a1534c73880ebc2fc0c376' => :high_sierra
    sha256 'dfa08a61d3659fa25437e701eb61186068e22deb96a1534c73880ebc2fc0c376' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
