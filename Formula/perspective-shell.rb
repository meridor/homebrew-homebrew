require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.0/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 'a8194063bb41a6c9c319ee76efb3b140ca62e9dd2a026ead4f33d6bb7e7f0236'
  version '1.2.0'


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
