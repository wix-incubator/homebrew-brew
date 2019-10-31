class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.5/AppleSimulatorUtils-0.7.5.tar.gz'
  sha256 'd38ff8cde823fb3998fb2ebaacce2c04c705fcaca6f144fc3ab0a1820e6c4abb'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.5'
    sha256 'dab106bd480a55e2cd68038c87732552f5386276490b1329f35f2d1201914e0a' => :catalina
    sha256 'dab106bd480a55e2cd68038c87732552f5386276490b1329f35f2d1201914e0a' => :mojave
    sha256 'dab106bd480a55e2cd68038c87732552f5386276490b1329f35f2d1201914e0a' => :high_sierra
    sha256 'dab106bd480a55e2cd68038c87732552f5386276490b1329f35f2d1201914e0a' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
