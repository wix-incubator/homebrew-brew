class Supraworker < Formula
  desc "Supraworker is generic worker which picks Jobs to be executed from your API"
  homepage ""
  url "https://github.com/weldpua2008/supraworker/releases/download/v0.2.2/supraworker_darwin_amd64.zip"
  sha256 "19141ce53034ed4c580f7928db0fe4b1ba5fa279f697fef3e58ba8115346749b"
  license "Apache-2.0"
  version "0.2.2"

  bottle :unneeded
  conflicts_with "supraworker"

  def install
    bin.install "supraworker"
  end

  test do
    system "#{bin}/supraworker version"
  end
end
