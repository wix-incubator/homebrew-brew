class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/archive/0.5.3.tar.gz'
  sha256 '66e0b2ce1cd49ae5ec474e676b58b77c2beca1a2445292b86224e9d6f199bf3f'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.1', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
