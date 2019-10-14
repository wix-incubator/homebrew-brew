class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.3/AppleSimulatorUtils-0.7.3.tar.gz'
  sha256 '8c85178741c27ca7fc60870a5445b567de1d1ed9ba726a69397d508c7b05bc9f'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.3'
    sha256 'bf1ec443533904336ec5e0c7dcfdec420ec5974bf358a339097063441df3058a' => :mojave
    sha256 'bf1ec443533904336ec5e0c7dcfdec420ec5974bf358a339097063441df3058a' => :high_sierra
    sha256 'bf1ec443533904336ec5e0c7dcfdec420ec5974bf358a339097063441df3058a' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
