class MavenAT35 < Formula
  desc "Java-based project management"
  homepage "https://maven.apache.org/"
  url "https://archive.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz"
  sha256 "d54c6bbd15a84a1eb703c9e40280c50f4642f624b23a807b820a21d600fbc27a"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats; <<~EOS
    Maven requires Java 8 or greater to be installed.
  EOS
  end

  test do
    system "#{bin}/mvn", "--version"
  end
end

