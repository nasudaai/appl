process.stdin.setRawMode(true);
process.stdin.resume();
process.stdin.setEncoding('utf-8');


setTimeout(() => {
  process.exit();
}, 10000);

process.stdin.on('data', (chunk) => {

  process.stdout.write(JSON.stringify(chunk));

  // ctrl + c
  if (chunk === '\u0003') {
    process.exit();
  }
});


process.on('exit', () => {

  process.stdout.write('\n');
  process.stdin.setRawMode(false);
});
