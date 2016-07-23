require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.0-RC1/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '5f125391c0d40298d7e5b3798d2bb699e48c38942cb362d179af88e46f9534ff'
  version '1.3.0-RC1'


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
