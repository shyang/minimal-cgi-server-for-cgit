require 'formula'

class Cgit <Formula
  url 'http://hjemli.net/git/cgit/snapshot/cgit-0.8.3.4.tar.bz2'
  homepage 'http://hjemli.net/git/cgit/'
  md5 '712e4d3013d754aa5752e0101188cf32'

  def install
    # cgit need the source code of git in its `git/' subfolder
    cgit_staging_dir = Dir.pwd
    Git.new.brew { system 'cp -r * ' + cgit_staging_dir + '/git/' }

    # build and install
    system "make DESTDIR=#{prefix} NEEDS_LIBICONV=1 install cgit"
    bin.install 'cgit'
  end 
end