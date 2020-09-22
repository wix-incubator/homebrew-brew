class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.8.2/AppleSimulatorUtils-0.8.2.tar.gz'
  sha256 'b616aab0e26d4a4a095b2589be130aff0d4cd215276c2d6d658a2ca99fef9caf'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.8.2'
    sha256 'cd0ec76239dca6f01112beea98d8265ff26fcd0bd2db2578169a78b7551f1741' => :catalina
    sha256 '0e7068086476e833712b1e359df6717471c80976904d96abbc07d72cc0077f2d' => :mojave
    sha256 '0e7068086476e833712b1e359df6717471c80976904d96abbc07d72cc0077f2d' => :high_sierra
    sha256 '0e7068086476e833712b1e359df6717471c80976904d96abbc07d72cc0077f2d' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
