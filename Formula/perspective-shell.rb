require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.4.1/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 'a37427602039f8d32ea9dc3e5be47ea3e2d7cdbcd989060d724cd8773f49caf5'
  version '1.3.4.1'

  devel do
    url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.4-RC1/perspective-shell.zip'
    sha256 '0bfd2231b986a451ddacc6c5d016d718eb26a26758cc84b045295ec1c95872fa'
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
