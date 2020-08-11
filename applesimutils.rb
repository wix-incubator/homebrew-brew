class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.8.1/AppleSimulatorUtils-0.8.1.tar.gz'
  sha256 'b309c9b5fcfdfc0042d42d7dc4b0aaa2a3d2abeb2357e8021ab24083066c1327'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.8.1'
    sha256 'ee55b41de14998a3721307141d8fe941a2896143f44ab806fa4c1541d3d513c0' => :catalina
    sha256 'ee55b41de14998a3721307141d8fe941a2896143f44ab806fa4c1541d3d513c0' => :mojave
    sha256 'ee55b41de14998a3721307141d8fe941a2896143f44ab806fa4c1541d3d513c0' => :high_sierra
    sha256 'ee55b41de14998a3721307141d8fe941a2896143f44ab806fa4c1541d3d513c0' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
