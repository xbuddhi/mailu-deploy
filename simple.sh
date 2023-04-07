#!/bin/bash
sudo apt-get update -y
apt-get install python3 -y

# This script starts a Python web server on port 8080 that responds with "Hello, World!"

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "Python is not installed. Aborting."
    exit 1
fi

# Start the Python web server
#!/bin/bash

python -c '
import http.server
import socketserver

PORT = 80

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print("serving at port", PORT)
    httpd.serve_forever()
'

# Print a message indicating that the server is running
echo "Server is running on port 80."
