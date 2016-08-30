require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.0/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '9c62f172c6cc4a7354f2b291e5627212019165c6d93d4fae2b523f56330d5543'
  version '1.3.0'


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
