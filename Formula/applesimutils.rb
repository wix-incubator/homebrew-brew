# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.9/AppleSimulatorUtils-0.9.9.tar.gz'
  sha256 '14335b85a634708a16b8c9645aba3e189dd4206e41b45c73f78ee85c6f229c73'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.9'

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
