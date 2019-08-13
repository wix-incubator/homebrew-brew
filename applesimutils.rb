class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.1/AppleSimulatorUtils-0.7.1.tar.gz'
  sha256 '4945ae23fe975f0f77082aa7b7d8ccdc00dd1eaaf9be1a69ac247a5f8561eaf7'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.1'
    sha256 'b0a306c837d299874fd431326b7261fbc778a705321280cd227039329a7e9289' => :mojave
    sha256 'b0a306c837d299874fd431326b7261fbc778a705321280cd227039329a7e9289' => :high_sierra
    sha256 'b0a306c837d299874fd431326b7261fbc778a705321280cd227039329a7e9289' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
