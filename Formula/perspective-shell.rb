require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.1.2/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 '6bccbbe358f581694bb7d999fc93418f00f9fb0e'
  version "1.1.2"


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
