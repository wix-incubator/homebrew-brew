# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.6/AppleSimulatorUtils-0.9.6.tar.gz'
  sha256 '631afcd75af26091fb37f5fbd2fe510d2dc780f4b33628fe2bf1a36ab0a7308b'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.6'

    sha256 arm64_big_sur: "f597cc8f4c09bf130921087565762d39eb9e79436df3ce8f5b700e372f5258bb"
    sha256 catalina:      "f597cc8f4c09bf130921087565762d39eb9e79436df3ce8f5b700e372f5258bb"
    sha256 mojave:        "f597cc8f4c09bf130921087565762d39eb9e79436df3ce8f5b700e372f5258bb"
    sha256 high_sierra:   "f597cc8f4c09bf130921087565762d39eb9e79436df3ce8f5b700e372f5258bb"
    sha256 sierra:        "f597cc8f4c09bf130921087565762d39eb9e79436df3ce8f5b700e372f5258bb"
    sha256 big_sur:       "f597cc8f4c09bf130921087565762d39eb9e79436df3ce8f5b700e372f5258bb"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
