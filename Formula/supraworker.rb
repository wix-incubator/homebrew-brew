class Supraworker < Formula
  desc "Supraworker is generic worker which picks Jobs to be executed from your API"
  homepage ""
  url "https://github.com/weldpua2008/supraworker/releases/download/v0.4.4/supraworker_darwin_amd64.zip"
  license "Apache-2.0"
  version :latest
  sha256 :no_check

  bottle :unneeded
  conflicts_with "supraworker"

  def install
    bin.install "supraworker"
  end

  test do
    system "#{bin}/supraworker version"
  end
end