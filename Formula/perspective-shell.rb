require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.2/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 'ec02a8e96e83cf06076233a4cb6a77bcb7e5d8ab23bab97e5aeb4a150856c3a5'
  version '1.3.2'


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
