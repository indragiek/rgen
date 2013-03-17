require 'formula'

class Rgen < Formula
  head 'https://github.com/indragiek/rgen.git', :branch => 'master'
  homepage 'https://github.com/indragiek/rgen'

  def install
    system "xcodebuild", "-project", "rgen.xcodeproj",
                         "-target", "rgen",
                         "-configuration", "Release",
                         "install",
                         "SYMROOT=build",
                         "DSTROOT=build",
                         "INSTALL_PATH=/bin"
    bin.install "build/bin/rgen"
  end
end
