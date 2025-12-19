import http from 'node:http';

// create server
http.createServer((req, res) => {

  if (req.method === "POST") {

    let body = "";


    req.on("data", chunk => {

      body += chunk;
    });


    req.on("end", () => {
      
      res.writeHead(200, { "content-Type": "text/plain" });
      res.end(`received: ${body}\n`);
    });

    return;
  }


  res.writeHead(200, { "content-Type": "text/plain" });
  res.end("hello\n");

}).listen(3000, () => {
  console.log("listening on http://localhost:3000");
});
