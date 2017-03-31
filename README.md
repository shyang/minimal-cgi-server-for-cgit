### Minimal CGI Server for cgit

This is a python cgi server (`server.py`) just for serving [cgit](https://git.zx2c4.com/cgit/).

`cgi-bin/cgit.cgi` is a precompiled mac 64-bit binary. (`make get-git all NO_GETTEXT=1 NO_LUA=1`)

### Enable syntax highlighting

* set `source-filter=filters/syntax-highlighting.py` in cgitrc, then `pip3 install pygments`

* set `source-filter=filters/syntax-highlighting.sh` in cgitrc, then `brew install highlight`

### Run

Before starting, change the scan-path in cgitrc.

$ ./server.py

Open a browser and navigate to http://127.0.0.1:8000/

![Screenshot](https://shyang.github.io/assets/cgit.png)