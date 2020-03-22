class JmxDump < Formula
  desc "Dump JMX Metrics on command line."
  homepage "https://github.com/r4um/jmx-dump"
  url "https://github.com/r4um/jmx-dump/releases/download/0.10.3/jmx-dump-0.10.3-standalone.jar"
  sha256 "4f49f92dc33229b3fbad882302a0aff1046e0a60db57a8894052fbd41ccce08c"

  depends_on "openjdk"

  def install
    libexec.install Dir["*.jar"]
    bin.write_jar_script libexec/"jmx-dump-#{version}-standalone.jar", "jmx-dump"
  end

  test do
    system "jmx-dump --help"
  end
end
