class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.7/AppleSimulatorUtils-0.7.7.tar.gz'
  sha256 'b91a06a02836627ab75fd6350368f4445869453f99a2f69f5101e06521f01086'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['8.0', :build]
  
  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.7.7'
    sha256 '273894479baf991291339d6ea3a68ce7f9a8dccff0c7ec3e745074ffbfdc17ff' => :catalina
    sha256 '273894479baf991291339d6ea3a68ce7f9a8dccff0c7ec3e745074ffbfdc17ff' => :mojave
    sha256 '273894479baf991291339d6ea3a68ce7f9a8dccff0c7ec3e745074ffbfdc17ff' => :high_sierra
    sha256 '273894479baf991291339d6ea3a68ce7f9a8dccff0c7ec3e745074ffbfdc17ff' => :sierra
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
