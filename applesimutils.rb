# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.3/AppleSimulatorUtils-0.9.3.tar.gz'
  sha256 '682b0023071eb09c2710e7c50a009fa5dbeecd21f67e8aba73ff7c3b3b113b29'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.3'
    sha256 arm64_big_sur: "6aabffa1093ac8f4ea77afd4f27ec7d7ace3fe5230edd53118b078f250d39e73"
    sha256 catalina:      "542c1acbf6b4518a85260a30edf7204b322f11f745d2e5ce033f87925ec42763"
    sha256 mojave:        "542c1acbf6b4518a85260a30edf7204b322f11f745d2e5ce033f87925ec42763"
    sha256 high_sierra:   "6aabffa1093ac8f4ea77afd4f27ec7d7ace3fe5230edd53118b078f250d39e73"
    sha256 sierra:        "6aabffa1093ac8f4ea77afd4f27ec7d7ace3fe5230edd53118b078f250d39e73"
    sha256 big_sur:       "6aabffa1093ac8f4ea77afd4f27ec7d7ace3fe5230edd53118b078f250d39e73"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
