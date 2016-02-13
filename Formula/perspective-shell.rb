require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.1.6/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 '5b3edda0d219ff3838dd43ad7aaced8c7ab3bcb9'
  version '1.1.6'


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
