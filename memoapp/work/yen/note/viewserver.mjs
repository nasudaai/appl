import http from 'node:http';
import { readFileSync } from 'node:fs';

// yen/ >>> "node note/viewserver.mjs todos.md"

const template = readFileSync("note/template.html", "utf-8");
console.log(template);

const file = process.argv[2];
//console.log(file);

const text = readFileSync(file, "utf-8");
//console.log(text);


const html = template.replace("{{body}}", text);

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' });
  res.end(html);
});

server.listen(3002, () => {
  console.log("listening on http://localhost:3002");
});
