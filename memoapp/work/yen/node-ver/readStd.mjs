process.stdin.setEncoding("utf-8");

let data = ""
process.stdin.on("data", chunk => {

  data = data + chunk
});

process.on("exit", () => {
   console.log(data);
});
