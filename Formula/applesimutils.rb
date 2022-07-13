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

    sha256 arm64_big_sur: "c628358da0ff7617b326f2d7ac77f1527f93096418ab21e6ac7f77de34bdad4f"
    sha256 catalina:      "c628358da0ff7617b326f2d7ac77f1527f93096418ab21e6ac7f77de34bdad4f"
    sha256 mojave:        "c628358da0ff7617b326f2d7ac77f1527f93096418ab21e6ac7f77de34bdad4f"
    sha256 high_sierra:   "c628358da0ff7617b326f2d7ac77f1527f93096418ab21e6ac7f77de34bdad4f"
    sha256 sierra:        "c628358da0ff7617b326f2d7ac77f1527f93096418ab21e6ac7f77de34bdad4f"
    sha256 big_sur:       "c628358da0ff7617b326f2d7ac77f1527f93096418ab21e6ac7f77de34bdad4f"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
