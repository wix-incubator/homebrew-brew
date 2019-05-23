class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5/AppleSimulatorUtils-0.6.5.tar.gz'
  sha256 '7315be5ee04728d19b1f789b8dc47280eb584e06a4beaa82b64e28f29ea3caf6'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5'
    sha256 'eb7fc15fff5b7ff5655ff0353799139896add9812667e8cd2360513d347287d5' => :mojave
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
