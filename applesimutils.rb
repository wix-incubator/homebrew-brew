class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9/AppleSimulatorUtils-0.9.tar.gz'
  sha256 '17ffe524dcb8d653a4aa7b52c6d9dc9bdd1546220bbd9d452c72a95cabae4c00'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9'
    sha256 'ab81720cca64babe78599a55ad5064220f4ca8acdf9cc9887b2feda6e5d9ecf4' => :catalina
    sha256 'ab81720cca64babe78599a55ad5064220f4ca8acdf9cc9887b2feda6e5d9ecf4' => :mojave
    sha256 'ab81720cca64babe78599a55ad5064220f4ca8acdf9cc9887b2feda6e5d9ecf4' => :high_sierra
    sha256 'ab81720cca64babe78599a55ad5064220f4ca8acdf9cc9887b2feda6e5d9ecf4' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
