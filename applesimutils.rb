class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5/AppleSimulatorUtils-0.6.5.tar.gz'
  sha256 'f5f106d5d325acf1c4b2a5d9cc8514d182fba86f2944acb6c4eb3f2157432a96'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.5'
    sha256 '915e7c6e901d69db7c93976e248e0f16ff43b4f1d70a4d7ab66f0123e474e961' => :mojave
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
