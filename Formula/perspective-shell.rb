require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.2.1/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '495f587ac612d32c0f9255bb28f6ee58ef16ce1459e4a1f0e5f13bb749e66a24'
  version '1.2.1'


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
