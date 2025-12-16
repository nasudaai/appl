import { createServer } from 'node:http';
import { readFileSync } from 'node:fs';

const html = readFileSync("index.html","utf-8");
console.log(html);


const server = createServer((req, res) => {

  if (req.url === "/hello") {

    res.writeHead(200, { 'content-Type': 'text/plain' });
    res.end('Hello World!\n');
  }

  res.writeHead(200, { "Content-Type": "text/html; charset=utf-8"});
  res.end("<h1>Html</h1>")
})

server.listen(3000, '127.0.0.1', () => {
  console.log('Listening on http://127.0.0.1:3000');
});
