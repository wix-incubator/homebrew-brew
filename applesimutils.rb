class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.4/AppleSimulatorUtils-0.7.4.tar.gz'
  sha256 '78ed08d5a7ab9ba4975c99a7d66e8bb53068f18fa86c708a90ec951ada7b5c5c'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.4'
    sha256 'bdb4638fd822d83542eddfa644df56c335c26bab8edfc62975991696dbcea329' => :catalina
    sha256 'bdb4638fd822d83542eddfa644df56c335c26bab8edfc62975991696dbcea329' => :mojave
    sha256 'bdb4638fd822d83542eddfa644df56c335c26bab8edfc62975991696dbcea329' => :high_sierra
    sha256 'bdb4638fd822d83542eddfa644df56c335c26bab8edfc62975991696dbcea329' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
