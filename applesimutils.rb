class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/wix/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/wix/homebrew-brew/master/AppleSimulatorUtils-0.6.4.tar.gz'
  sha256 '7b32c84b4284b459dbe74a3076b7f8694b9f18dea023a2d99e2b32c6e67edd00'
  head 'https://github.com/wix/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]
  
  bottle do
    root_url "https://github.com/wix/AppleSimulatorUtils/releases/download/0.6.4"
    sha256 "99fe0a7b0670eb54c3acf388ec03c883ffcb1ca4faa8d0c839f033584f79a3f7" => :mojave
  end

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
