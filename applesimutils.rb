class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5/AppleSimulatorUtils-0.6.5.tar.gz'
  sha256 '6095c4d7543f1ce499ac4e2e5498882880de4a7c2c61ead652b3bd8732c2cb1d'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5'
    sha256 '6c7e4fa6a8e25cb44eb1da806e405f90624854349a996e4351f3f15a967642f9' => :mojave
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
