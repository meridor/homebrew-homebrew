require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.2/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '1296c9b8ed6da8321b925e28df5dcf21852e3268d49caaf49d6bbb0d11ab52d8'
  version '1.2.2'


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
