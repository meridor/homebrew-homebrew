require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.0.0/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha1 'fcac8ae3ca69fb8871dcc252e6e4ed38f9388b09'
  version "1.0.0"


  def install
    jarname = 'perspective-shell.jar'
    libexec.install "lib/#{jarname}"
    bin.write_jar_script libexec/jarname, "perspective"
  end

  test do
    system "#{bin}/perspective version"
  end
end
