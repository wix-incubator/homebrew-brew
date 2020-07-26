class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.8/AppleSimulatorUtils-0.8.tar.gz'
  sha256 '265430ca2474b64397594dc1ccc664b7522460f764aafa7255bbb627d55e8df7'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.8'
    sha256 '2031d87663316fe7a668fd7b432c8d9ca370a2c86bcf48745d22fedb6890d151' => :catalina
    sha256 '2031d87663316fe7a668fd7b432c8d9ca370a2c86bcf48745d22fedb6890d151' => :mojave
    sha256 '2031d87663316fe7a668fd7b432c8d9ca370a2c86bcf48745d22fedb6890d151' => :high_sierra
    sha256 '2031d87663316fe7a668fd7b432c8d9ca370a2c86bcf48745d22fedb6890d151' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
