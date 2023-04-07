# This script starts a Python web server on port 8080 that responds with "Hello, World!"
# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    #!/bin/bash
    sudo apt-get update -y
    apt-get install python3 -y
fi

# Start the Python web server
#!/bin/bash

python3 -c '
import http.server
import socketserver

class MyHandler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(b"Hello World!")

PORT = 80

with socketserver.TCPServer(("", PORT), MyHandler) as httpd:
    print("serving at port", PORT)
    httpd.serve_forever()


'

# Print a message indicating that the server is running
echo "Server is running on port 80."
