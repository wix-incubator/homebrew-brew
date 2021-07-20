# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.4/AppleSimulatorUtils-0.9.4.tar.gz'
  sha256 'eddd4bfdba91f1c6e0c36aca7d762d404e6197bec1978ab4d013fa1207460718'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.4'
    sha256 arm64_big_sur: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    sha256 catalina:      "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    sha256 mojave:        "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    sha256 high_sierra:   "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    sha256 sierra:        "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    sha256 big_sur:       "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
