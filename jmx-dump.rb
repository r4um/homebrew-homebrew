class JmxDump < Formula
  desc "Dump JMX Metrics on command line."
  homepage "https://github.com/r4um/jmx-dump"
  url "https://github.com/r4um/jmx-dump/releases/download/0.11.3/jmx-dump-0.11.3-standalone.jar"
  sha256 "8640c6061e63ea9c4dc81af4808d4387de2c4c4b0c5c458f46fffd6efc90dc06"

  depends_on "openjdk"

  def install
    libexec.install Dir["*.jar"]
    bin.write_jar_script libexec/"jmx-dump-#{version}-standalone.jar", "jmx-dump"
  end

  test do
    system "jmx-dump --help"
  end
end
