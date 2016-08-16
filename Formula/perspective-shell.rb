require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.0-RC2/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '0dc0463b6a25191983fd156390b2573bcb267c9b0baf63997447b9747431f320'
  version '1.3.0-RC2'


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
