process.stdin.setEncoding('utf-8');
process.stdin.resume();

process.on('SIGINT', () => {
  process.stdout.write('\n');
  process.exit(0);
});


process.stdin.on('data', (line) => {
  
  const input = line.replace(/\r?\n$/, '');
  process.stdout.write('input: ' + input + "\n");
});

