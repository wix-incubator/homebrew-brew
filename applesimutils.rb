class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/archive/0.5.2.tar.gz'
  sha256 '1fa7c037e3b17d551e143e460c7e0a32b5fda9c191d3aa3a7487ff7105a88127'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.1', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
