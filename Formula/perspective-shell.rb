require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.1.3/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 '4558640baeea5fa3edfe0656ef0983ff33bc249a'
  version "1.1.3"


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
