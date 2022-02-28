class Supraworker < Formula
  desc "Supraworker is generic worker which picks Jobs to be executed from your API"
  homepage ""
  url "https://github.com/weldpua2008/supraworker/releases/download/v0.4.4/supraworker_darwin_amd64.zip"
  license "Apache-2.0"
  version "0.4.4"
  sha256 "f5ee45f8f1dd4c61a7ea668bd74167b3629c83a188d953f19ab985c08b24dbf2"

  conflicts_with "supraworker"

  def install
    bin.install "supraworker"
  end

  test do
    system "#{bin}/supraworker version"
  end
end
