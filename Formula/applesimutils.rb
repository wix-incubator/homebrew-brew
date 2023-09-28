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

    sha256 arm64_big_sur: "abf970464a590ebbcae70f79d6755201167da1d5c90fc8f8124957a7b14c295e"
    sha256 catalina:      "abf970464a590ebbcae70f79d6755201167da1d5c90fc8f8124957a7b14c295e"
    sha256 mojave:        "abf970464a590ebbcae70f79d6755201167da1d5c90fc8f8124957a7b14c295e"
    sha256 high_sierra:   "abf970464a590ebbcae70f79d6755201167da1d5c90fc8f8124957a7b14c295e"
    sha256 sierra:        "abf970464a590ebbcae70f79d6755201167da1d5c90fc8f8124957a7b14c295e"
    sha256 big_sur:       "abf970464a590ebbcae70f79d6755201167da1d5c90fc8f8124957a7b14c295e"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
