#! /usr/bin/env python3

import os

from http.server import HTTPServer, CGIHTTPRequestHandler
from pdb import set_trace as st

os.environ['CGIT_CONFIG'] = os.path.expanduser('~/.cgitrc')

httpd = HTTPServer(('127.0.0.1', 8000), CGIHTTPRequestHandler)

try:
    httpd.serve_forever()
except KeyboardInterrupt:
    pass

