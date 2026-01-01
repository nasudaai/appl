import { writeFileSync, readFileSync, existsSync } from 'node:fs';

const args = process.argv.slice(2);

const fileName = args[0];
const title = args[1];

if (existsSync(fileName)) {
  process.stdout.write("existing " + fileName + "\n");
  process.exit(0)
}

writeFileSync(fileName, title, "utf-8");


process.stdout.write("create new file\n");

const fileData = readFileSync(fileName);
process.stdout.write(fileData + "\n");
