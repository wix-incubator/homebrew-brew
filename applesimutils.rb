class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/wix/homebrew-brew/master/AppleSimulatorUtils-0.5.13.tar.gz'
  sha256 'cf8395f7c17ffdb200ecfbd1f1b6408893552563b48261fd3c6c4648395b3157'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.3', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
