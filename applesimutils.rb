class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9/AppleSimulatorUtils-0.9.tar.gz'
  sha256 'c596b1f145fee38e030de3b584ed3036966574c6b918e7d4b439360aa75932fc'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9'
    sha256 '57452a1ac3d7f1b0cfe56cae2a5dc7e862682124c28719081e5477bef4207c01' => :catalina
    sha256 '57452a1ac3d7f1b0cfe56cae2a5dc7e862682124c28719081e5477bef4207c01' => :mojave
    sha256 '57452a1ac3d7f1b0cfe56cae2a5dc7e862682124c28719081e5477bef4207c01' => :high_sierra
    sha256 '0e7068086476e833712b1e359df6717471c80976904d96abbc07d72cc0077f2d' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
