require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.0-RC4/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 'b35e6458c771c5e6e9746915fe5c82dba0b406881996e3f894bb926cc1751754'
  version '1.2.0-RC4'


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
