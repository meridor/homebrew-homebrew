require 'formula'

class PerspectiveShell < Formula
  homepage 'https://github.com/meridor/perspective-backend'
  url 'https://github.com/meridor/perspective-backend/releases/download/perspective-backend-1.3.4/perspective-shell.zip'
  head 'https://github.com/meridor/perspective-backend.git'
  sha256 '35e17d57fa062e15fff255b628bb44dcb3f52b9e76585218dd4a744b3b7cba06'
  version '1.3.4'

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
