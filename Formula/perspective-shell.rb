require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.1.1/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 '198f7829346df4fae23095fb9db09d7301257942'
  version "1.1.1"


  def install
    jarname = 'perspective-shell.jar'
    libexec.install "data/#{jarname}"
    libexec.install "data/lib/*"
    bin.write_jar_script libexec/jarname, "perspective"
  end

  test do
    system "#{bin}/perspective version"
  end
end
