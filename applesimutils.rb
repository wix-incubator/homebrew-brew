class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5/AppleSimulatorUtils-0.6.5.tar.gz'
  sha256 'f1a3cf7add301fc208ec5e03dca6ba45d0f9641eeb85dbe9bade2ea8b4c51fba'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5'
    sha256 'e061814d898b3e9b44b2f335118a91b5ca1d94eac38005525dbf89d4f131234e' => :mojave
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
