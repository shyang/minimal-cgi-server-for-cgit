require 'formula'

class Git < Formula
  url 'https://github.com/git/git/tarball/v1.7.4.5'
  homepage 'http://git-scm.com'
  md5 '9b5aa25a5758a616f2c2b17630448b33'
end

class Cgit <Formula
  url 'http://hjemli.net/git/cgit/snapshot/cgit-0.9.0.3.tar.bz2'
  homepage 'http://hjemli.net/git/cgit/'
  md5 '3d5481bf8a507694108f0996b8bde235'

  def install
    # cgit need the source code of git in its `git/' subfolder
    cgit_staging_dir = Dir.pwd
    Git.new.brew { system 'cp -r * ' + cgit_staging_dir + '/git/' }

    # build and install
    system "make DESTDIR=#{prefix} NEEDS_LIBICONV=1 install"
  end
end
