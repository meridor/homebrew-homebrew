require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.1/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '6a8d514cf77ea364d95bf76a39c697f55132a649748524548ab00a9bd96c2def'
  version '1.3.1'


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
