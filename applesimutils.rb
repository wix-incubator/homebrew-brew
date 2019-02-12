class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/wix/homebrew-brew/master/AppleSimulatorUtils-0.6.3.tar.gz'
  sha256 '68821129ee2851d0e365baf3cdd723f64a4b4512b1e375211fd98cd3d03fab2e'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.3', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
