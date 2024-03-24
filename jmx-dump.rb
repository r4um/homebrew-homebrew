class JmxDump < Formula
  desc "Dump JMX Metrics as JSON on command line."
  homepage "https://github.com/r4um/jmx-dump"
  license "EPL-1.0"
  url "https://github.com/r4um/jmx-dump/releases/download/0.12.0/jmx-dump"
  sha256 "81e25bc1d68b7f160305a24ab064b3308f58e4e218aa6dffca0bc7df949d6884"
  
  depends_on "openjdk"

  def install
    bin.install "jmx-dump"
  end
  
  test do
    system "jmx-dump --help"
  end
end
