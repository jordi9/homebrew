require 'formula'

class Liquibase < Formula
  homepage 'http://www.liquibase.org/'
  url 'http://downloads.sourceforge.net/project/liquibase/Liquibase%20Core/liquibase-3.0.2-bin.tar.gz'
  sha1 'c48193ea228b07b0c42109692c8ddb4981863044'

  def install
   chmod 0777, Dir['*']
   prefix.install_metafiles
   libexec.install Dir['*']
   bin.install_symlink libexec+'liquibase'
  end

end
