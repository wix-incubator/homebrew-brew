class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.2/AppleSimulatorUtils-0.9.2.tar.gz'
  sha256 'aa14267ecf5ad09904047fef3dbfa4ddf05c99b859771380d01de3d911bcb9d8'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.2'
    sha256 '11c57fb0008b59552881f03d6897de54ad4e7046cb19ff26725ce34d3a6c1738' => :catalina
    sha256 '11c57fb0008b59552881f03d6897de54ad4e7046cb19ff26725ce34d3a6c1738' => :mojave
    sha256 '11c57fb0008b59552881f03d6897de54ad4e7046cb19ff26725ce34d3a6c1738' => :high_sierra
    sha256 '11c57fb0008b59552881f03d6897de54ad4e7046cb19ff26725ce34d3a6c1738' => :sierra
    sha256 '11c57fb0008b59552881f03d6897de54ad4e7046cb19ff26725ce34d3a6c1738' => :big_sur
    sha256 '11c57fb0008b59552881f03d6897de54ad4e7046cb19ff26725ce34d3a6c1738' => :arm64_big_sur
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
