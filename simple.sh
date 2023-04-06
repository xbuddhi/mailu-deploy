#!/bin/bash

# Create server.js file
apt install nodejs -y
echo "Creating server.js file..."
cat <<EOT > server.js
const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(port, '0.0.0.0', () => {
  console.log(\`Server running on port \${port}\`);
});
EOT

# Install dependencies (if needed)
echo "Installing dependencies..."
npm install express

# Start server
echo "Starting server..."
node server.js
