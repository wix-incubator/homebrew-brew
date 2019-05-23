class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5/AppleSimulatorUtils-0.6.5.tar.gz'
  sha256 'bfab0b18fd0b3e46600482f43754cc8ed5e21fdf2f56f2e43e7031e64239d5cc'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5'
    sha256 '0fd0a6e71e78d998a5ec390a755d12012ffb9247490b80e27a81bcc88d83f4a8' => :mojave
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
