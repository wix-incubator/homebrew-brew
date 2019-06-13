class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.8/AppleSimulatorUtils-0.6.8.tar.gz'
  sha256 'c5cacf3542fbe45007b4b9064bc5f2290a4b887e8070839fa20502eec3b7f0f0'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.8'
    sha256 '831cb91e41125e6cb0f4c842349438db59b824d04e6d65be22ea400783351d51' => :mojave
    sha256 '831cb91e41125e6cb0f4c842349438db59b824d04e6d65be22ea400783351d51' => :high_sierra
    sha256 '831cb91e41125e6cb0f4c842349438db59b824d04e6d65be22ea400783351d51' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
