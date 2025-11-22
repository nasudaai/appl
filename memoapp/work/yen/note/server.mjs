import http from 'http';

const port = 3001

const html = "<textarea></textarea>";
console.log(html)

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html; charaset=utf-8' });
  res.end(html);
});

server.listen(port, () => {
  console.log(`server running at http://localhost:${port}`);
})
console.log("create server");
