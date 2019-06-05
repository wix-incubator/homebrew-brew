class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.7/AppleSimulatorUtils-0.6.7.tar.gz'
  sha256 '0f2f4e44ee275b06eaf588c1df6dfce971b529a740afb7d797d11e767e3c8af1'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.7'
    sha256 'ce8a4df42d30b8c49638e59606a22b77951ffdbaeede884fe03295c8d539f768' => :mojave
    sha256 'ce8a4df42d30b8c49638e59606a22b77951ffdbaeede884fe03295c8d539f768' => :high_sierra
    sha256 'ce8a4df42d30b8c49638e59606a22b77951ffdbaeede884fe03295c8d539f768' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
