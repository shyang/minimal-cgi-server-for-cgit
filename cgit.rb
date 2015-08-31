require 'formula'

class Cgit <Formula
  url 'http://git.zx2c4.com/cgit/snapshot/cgit-0.11.2.tar.xz'
  homepage 'http://git.zx2c4.com/cgit/'
  sha256 '2e126e770693d7296c7eb5eb83b809410aef29870bfe8f54da072a3f4d813e3b'

  def install
    # cgit need the source code of git in its `git/' subfolder
    cgit_staging_dir = Dir.pwd

    # build and install
    system 'make get-git'
    system "make DESTDIR=#{prefix} NO_GETTEXT=1 NO_LUA=1 install"
  end
end
