process.stdin.on('data', (chunk) => {

  const string = chunk.toString()

  if (string.trim() === "exit") {
    process.exit(0);
  }


  process.stdout.write(chunk);
});
