class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.6/AppleSimulatorUtils-0.7.6.tar.gz'
  sha256 '0f12d7db94f2fa31318adc2717984d1d98b2e65963bdceed2eb1d6826a4b5b28'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.6'
    sha256 '4c4967fac2dac5468a01f3418c69f0848ac51348359ed0a80e7c9b016b12a0f1' => :catalina
    sha256 '4c4967fac2dac5468a01f3418c69f0848ac51348359ed0a80e7c9b016b12a0f1' => :mojave
    sha256 '4c4967fac2dac5468a01f3418c69f0848ac51348359ed0a80e7c9b016b12a0f1' => :high_sierra
    sha256 '4c4967fac2dac5468a01f3418c69f0848ac51348359ed0a80e7c9b016b12a0f1' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
