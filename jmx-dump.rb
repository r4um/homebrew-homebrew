class JmxDump < Formula
  desc "Dump JMX Metrics as JSON on command line."
  homepage "https://github.com/r4um/jmx-dump"
  license "EPL-1.0"
  url "https://github.com/r4um/jmx-dump/releases/download/0.15.0/jmx-dump"
  sha256 "f3dc96f6d578ed551046711c8c1b6d183c19f12dc0f06a3eea105ab195c4eec2"
  
  depends_on "openjdk"

  def install
    bin.install "jmx-dump"
  end
  
  test do
    system "jmx-dump --help"
  end
end
