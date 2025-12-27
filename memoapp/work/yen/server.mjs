import { createServer } from 'node:http';


const html = `
<h1>html</h1>
  <form action="/test" method="POST">
    <input name="message" placeholder="Type something" />
    <button type="submit">Send</button>
  </form>
`


const server = createServer((req, res) => {

  if (req.method === "POST" && req.url === "/test") {

    let body = [];

    req.on("data", chunk => body.push(chunk));

    
    req.on("end", () => {

      body = Buffer.concat(body).toString();
      console.log("Post data:", body);
      


      res.writeHead(302, { Location: "/" });
      res.end();

    });

  } else if (req.url === "/api" && req.method === "GET") {

    const data = { message: "Hello from /api" };
    res.writeHead(200, { "Content-Type": "application/json" });
    res.end(JSON.stringify(data));
  
  } else {


    res.writeHead(200, { "Content-Type": "text/html" });
    res.end(html);

  }
});

server.listen(3000, () => {
  console.log("server listen on http://localhost:3000");
});
