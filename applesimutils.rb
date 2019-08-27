class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.2/AppleSimulatorUtils-0.7.2.tar.gz'
  sha256 '359c349166d45ca23aa71c72062607933f34545537c9e4c1a9435a5cfcc09478'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.2'
    sha256 '7ad640d6f1b44cb318d05de9721e5248f85d4c85456597b2cfd6a22f4da659a9' => :mojave
    sha256 '7ad640d6f1b44cb318d05de9721e5248f85d4c85456597b2cfd6a22f4da659a9' => :high_sierra
    sha256 '7ad640d6f1b44cb318d05de9721e5248f85d4c85456597b2cfd6a22f4da659a9' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
