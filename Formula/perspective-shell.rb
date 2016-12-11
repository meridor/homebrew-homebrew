require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.3/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '112f80732c37d0ad0d6ac1fd988f45e4439561fd01264bfbb5d84fc2b85ac7a3'
  version '1.3.3'


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
