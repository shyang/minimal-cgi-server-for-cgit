require 'formula'

class Git < Formula
  url 'http://kernel.org/pub/software/scm/git/git-1.7.4.4.tar.bz2'
  homepage 'http://git-scm.com'
  md5 '1313f71d62fa100b32fa313769a85f2a'
end

class Cgit <Formula
  url 'http://hjemli.net/git/cgit/snapshot/cgit-0.9.tar.bz2'
  homepage 'http://hjemli.net/git/cgit/'
  md5 'b55f953c5c8a418bca72b3de3c297270'

  def install
    # cgit need the source code of git in its `git/' subfolder
    cgit_staging_dir = Dir.pwd
    Git.new.brew { system 'cp -r * ' + cgit_staging_dir + '/git/' }

    # build and install
    system "make DESTDIR=#{prefix} NEEDS_LIBICONV=1 install"
  end
end
