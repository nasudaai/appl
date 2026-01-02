const args = process.argv.slice(2);
args.forEach((arg) => {
  process.stdout.write(JSON.stringify(arg));
})

process.stdout.write(args.join());
