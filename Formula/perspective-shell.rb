require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.1.5/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 '454e9359ce1e453122ab1293e07ed13a40ce94ec'
  version '1.1.5'


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
