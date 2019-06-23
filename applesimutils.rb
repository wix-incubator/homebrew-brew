class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.0/AppleSimulatorUtils-0.7.0.tar.gz'
  sha256 '907ee4392ceb7fc8880e4f5a12597d7c04d9f73d58e9ee4ea8f91c00ef87055a'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.0'
    sha256 '919847dc9f3bc490fc453182b8208cbdffa4e6fce96d0103cce35d3802fe336a' => :mojave
    sha256 '919847dc9f3bc490fc453182b8208cbdffa4e6fce96d0103cce35d3802fe336a' => :high_sierra
    sha256 '919847dc9f3bc490fc453182b8208cbdffa4e6fce96d0103cce35d3802fe336a' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
