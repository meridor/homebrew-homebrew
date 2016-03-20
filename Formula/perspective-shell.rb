require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.0-RC3/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 'a8f95828d9afa2c3525218ba0f8eda7d2714c4e0'
  version '1.2.0-RC3'


  def install
    jarname = 'perspective-shell.jar'
    libexec.install "data/#{jarname}"
    libexec.install "data/lib"
    bin.write_jar_script libexec/jarname, "perspective"
  end

  test do
    system "#{bin}/perspective version"
  end
end
