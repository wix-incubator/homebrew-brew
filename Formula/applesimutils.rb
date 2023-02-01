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

    sha256 arm64_big_sur: "7ecf43c5a6849a1c78c085c2ef59be1d2d872ab5a97b0327d882843a3c5ea9b4"
    sha256 catalina:      "7ecf43c5a6849a1c78c085c2ef59be1d2d872ab5a97b0327d882843a3c5ea9b4"
    sha256 mojave:        "7ecf43c5a6849a1c78c085c2ef59be1d2d872ab5a97b0327d882843a3c5ea9b4"
    sha256 high_sierra:   "7ecf43c5a6849a1c78c085c2ef59be1d2d872ab5a97b0327d882843a3c5ea9b4"
    sha256 sierra:        "7ecf43c5a6849a1c78c085c2ef59be1d2d872ab5a97b0327d882843a3c5ea9b4"
    sha256 big_sur:       "7ecf43c5a6849a1c78c085c2ef59be1d2d872ab5a97b0327d882843a3c5ea9b4"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
