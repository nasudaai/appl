import http from 'http';
import { readFileSync } from 'fs';
const port = 3001

const html = readFileSync("./index.html", "utf-8");
console.log(html)

const server = http.createServer((req, res) => {
  
  if (req.url === "/styles.css") {
    res.writeHead(200, { "content-Type": "text/css; charset=utf-8" });
    res.end(`
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    textarea {
      width: 80%;
      height: 80%;
    }
    `);
    return;
  }

  res.writeHead(200, { 'Content-Type': 'text/html; charaset=utf-8' });
  res.end(html);
});

server.listen(port, () => {
  console.log(`server running at http://localhost:${port}`);
})
console.log("create server");
