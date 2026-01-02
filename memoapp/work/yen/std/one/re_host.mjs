import { createServer } from 'node:http';


const server = createServer((req, res) => {

  res.end(req.headers.host);
});


server.listen(3000, () => {
  console.log("http://localhost:3000");
});
