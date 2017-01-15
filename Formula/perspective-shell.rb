require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.3/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '112f80732c37d0ad0d6ac1fd988f45e4439561fd01264bfbb5d84fc2b85ac7a3'
  version '1.3.3'

  devel do
    url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.4-RC1/perspective-shell.zip'
    sha256 "c64b0a1b1114b73e2808bda9bbbb1c19bd40badd47c954b83b2552991599ee68"
  end

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
