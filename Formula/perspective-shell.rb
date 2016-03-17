require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.0-RC2/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 '2b6cb58eabf5009a1a0ca19f5357c34194f007c4'
  version '1.2.0-RC2'


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
