class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.8/AppleSimulatorUtils-0.7.8.tar.gz'
  sha256 '334a1e411f577417b135727648d3577208f5a4f53f6794b1962346c43c4d3885'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.8'
    sha256 '7b8dbaa8a3da1f63788bd11bbf149fc6d17f4f605692cbb3f6b553350a080b5f' => :catalina
    sha256 '7b8dbaa8a3da1f63788bd11bbf149fc6d17f4f605692cbb3f6b553350a080b5f' => :mojave
    sha256 '7b8dbaa8a3da1f63788bd11bbf149fc6d17f4f605692cbb3f6b553350a080b5f' => :high_sierra
    sha256 '7b8dbaa8a3da1f63788bd11bbf149fc6d17f4f605692cbb3f6b553350a080b5f' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
