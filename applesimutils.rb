class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/wix/homebrew-brew/master/AppleSimulatorUtils-0.6.3.tar.gz'
  sha256 '7e8542606c6a60784428c7ad23f26bc678fd2f493e93db52fcf05710ae9bb632'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.3', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
