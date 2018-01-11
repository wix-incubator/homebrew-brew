class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/wix/homebrew-brew/master/AppleSimulatorUtils-0.5.20.tar.gz'
  sha256 '6616d60f346b87ac2582f1e29bddab5856b19bb0d364494728272b72f6cb54e3'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.3', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
