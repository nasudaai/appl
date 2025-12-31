const args = process.argv.slice(2);

const [file, title] = args;

if (!file || !title) {
  process.stderr.write("usage: please <filename> <title>\n")
  process.exit(1);
} else {
  
  process.stdout.write(file + " " + title + "\n");
}
