class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/wix/homebrew-brew/master/AppleSimulatorUtils-0.6.3.tar.gz'
  sha256 '4ae8a570bab14a984a07e03d4b627b755c7c52eb4c84349bac7d1b08f4341283'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.3', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
