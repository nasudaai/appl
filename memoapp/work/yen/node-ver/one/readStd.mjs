process.stdin.setEncoding("utf-8");

let data = ""
process.stdin.on("data", chunk => {

  if (chunk.trim() === "exit") {
    process.exit(0);
  }

  process.stdout.write("[chunk]" + JSON.stringify(chunk) + "\n");

  data = data + chunk;
});

process.on("exit", () => {
   console.log("\nwarited\n" + data);
});
