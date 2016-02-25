require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.0-RC1/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 '9393b0160d418ec49118f4730d8b4c2aa5fff068'
  version '1.2.0-RC1'


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
