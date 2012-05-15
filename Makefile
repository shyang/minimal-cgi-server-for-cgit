
start:
	CGIT_CONFIG=~/.cgitrc lighttpd -D -f lighttpd.conf &
	tail -f access.log

link:
	ln -svf `pwd`/cgit.rb /usr/local/Library/Formula/
	ln -svf `pwd`/cgitrc ~/.cgitrc

