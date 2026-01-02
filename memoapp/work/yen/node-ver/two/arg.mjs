const args = process.argv.slice(2);
const data = args.join(", ") + "\n";
process.stdout.write(data);

