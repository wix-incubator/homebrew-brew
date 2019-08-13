class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.0/AppleSimulatorUtils-0.7.0.tar.gz'
  sha256 'a2210384fc5339aa459161861e95c65ed913e0bae6c7ee5e22bea95c77362c1d'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.0'
    sha256 'be369a1ec0b7cf9fd18da3198c68dcbe92e258dc9f71aabf17eb53853d0633b9' => :mojave
    sha256 'be369a1ec0b7cf9fd18da3198c68dcbe92e258dc9f71aabf17eb53853d0633b9' => :high_sierra
    sha256 'be369a1ec0b7cf9fd18da3198c68dcbe92e258dc9f71aabf17eb53853d0633b9' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
