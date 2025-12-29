import { createServer } from 'node:http';
import { readFileSync } from 'node:fs';


const html = readFileSync("index.html", "utf-8");
console.log(html);


const server = createServer((req, res) =>{
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("server");
});

server.listen(3000, () => {
  console.log("server listen on http://localhost:3000");
})
