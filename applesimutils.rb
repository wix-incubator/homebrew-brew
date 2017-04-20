class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/archive/0.5.4.tar.gz'
  sha256 '8cf361bb176b838655350128188f33e504d5c491c02e0473e83c14940d3314a4'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.1', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
