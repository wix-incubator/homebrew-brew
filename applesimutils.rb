class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9/AppleSimulatorUtils-0.9.tar.gz'
  sha256 '78cfccc1006b37924c6b2d1c157aff1af0cd8dba5183b903cf63d31a7dae3443'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9'
    sha256 'b5c5ef5b165d749eafd16862c5665cbf35ce10499cb96cc1159d233c34a22a3e' => :catalina
    sha256 'b5c5ef5b165d749eafd16862c5665cbf35ce10499cb96cc1159d233c34a22a3e' => :mojave
    sha256 'b5c5ef5b165d749eafd16862c5665cbf35ce10499cb96cc1159d233c34a22a3e' => :high_sierra
    sha256 'b5c5ef5b165d749eafd16862c5665cbf35ce10499cb96cc1159d233c34a22a3e' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
