require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.0-RC3/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '21ced8363b8e510c4ea4925e3d7d80b8a287cb2e23a497b74fe3f3218e8dc789'
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
