#! /usr/bin/env python3

import os

from http.server import HTTPServer, CGIHTTPRequestHandler

os.environ['CGIT_CONFIG'] = 'cgitrc' # in current working directory

port = 8000
httpd = HTTPServer(('127.0.0.1', port), CGIHTTPRequestHandler)

print('start serving on port %d...' % port)

try:
    httpd.serve_forever()
except KeyboardInterrupt:
    pass

