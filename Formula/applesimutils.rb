# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.10/AppleSimulatorUtils-0.9.10.tar.gz'
  sha256 '0c63ecaefb4a5463b40dc1d04ec8947faba09be66b4165d08b51905636298dd9'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.10'

    sha256 arm64_big_sur: "e3971b3f6d5b7ef010d811b1c1b44492e496eebecf7ef934d6bcfca750828152"
    sha256 catalina:      "e3971b3f6d5b7ef010d811b1c1b44492e496eebecf7ef934d6bcfca750828152"
    sha256 mojave:        "e3971b3f6d5b7ef010d811b1c1b44492e496eebecf7ef934d6bcfca750828152"
    sha256 high_sierra:   "e3971b3f6d5b7ef010d811b1c1b44492e496eebecf7ef934d6bcfca750828152"
    sha256 sierra:        "e3971b3f6d5b7ef010d811b1c1b44492e496eebecf7ef934d6bcfca750828152"
    sha256 big_sur:       "e3971b3f6d5b7ef010d811b1c1b44492e496eebecf7ef934d6bcfca750828152"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
