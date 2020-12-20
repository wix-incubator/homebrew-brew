class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.1/AppleSimulatorUtils-0.9.1.tar.gz'
  sha256 '0601324c290f356681ed3df2cebb196902bd2b28c97b119128116c5e491d558d'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.1'
    sha256 '12fbc6a00bb817040fc1976328d4eefeb3075b133fa79fc24a2af98d0e93adc7' => :catalina
    sha256 '12fbc6a00bb817040fc1976328d4eefeb3075b133fa79fc24a2af98d0e93adc7' => :mojave
    sha256 '12fbc6a00bb817040fc1976328d4eefeb3075b133fa79fc24a2af98d0e93adc7' => :high_sierra
    sha256 '12fbc6a00bb817040fc1976328d4eefeb3075b133fa79fc24a2af98d0e93adc7' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
