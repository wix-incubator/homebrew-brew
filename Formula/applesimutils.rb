# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.5/AppleSimulatorUtils-0.9.5.tar.gz'
  sha256 '7999d375ca7619c58d1ce918c8bc7f523f2df370217d0f77d0fb7f5c5ac25b12'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.5'

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
