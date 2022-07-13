# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.7/AppleSimulatorUtils-0.9.7.tar.gz'
  sha256 '66f03496e512a233f1c6b542f33a256adb8c1233a61bff5e2c4c490b8013f1bf'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.7'

    sha256 arm64_big_sur: "49e54d54a7ab60829b89ba9c8864d02be2a1adc2c3334575a4143d4a828cdc18"
    sha256 catalina:      "0abd6a10f0fa5f7008799c06c59836b690ca2707bf9cb8a62095ecbd87363e6d"
    sha256 mojave:        "49e54d54a7ab60829b89ba9c8864d02be2a1adc2c3334575a4143d4a828cdc18"
    sha256 high_sierra:   "49e54d54a7ab60829b89ba9c8864d02be2a1adc2c3334575a4143d4a828cdc18"
    sha256 sierra:        "49e54d54a7ab60829b89ba9c8864d02be2a1adc2c3334575a4143d4a828cdc18"
    sha256 big_sur:       "49e54d54a7ab60829b89ba9c8864d02be2a1adc2c3334575a4143d4a828cdc18"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
