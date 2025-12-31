const args = process.argv.slice(2);

const [file, title] = args;
process.stdout.write(file + " " + title);
