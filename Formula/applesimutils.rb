# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.8/AppleSimulatorUtils-0.9.8.tar.gz'
  sha256 '251524acb6372b7accfa443755b6803401e460192e95dac9883a5275bb0b859e'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.8'

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
