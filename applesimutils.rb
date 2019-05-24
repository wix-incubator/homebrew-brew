class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.6/AppleSimulatorUtils-0.6.6.tar.gz'
  sha256 'fe02f09a120076f9b89bac88579263db71d699866838b8438464285878ab12ba'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.6'
    sha256 'c64634d6533a0b34b615fa07b735b19f9d44b87ca471a3eeac6edab8121a815b' => :mojave
    sha256 'c64634d6533a0b34b615fa07b735b19f9d44b87ca471a3eeac6edab8121a815b' => :high_sierra
    sha256 'c64634d6533a0b34b615fa07b735b19f9d44b87ca471a3eeac6edab8121a815b' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
