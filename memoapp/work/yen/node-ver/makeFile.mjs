import { writeFileSync, readFileSync, existsSync } from 'node:fs';




const fileName = process.argv[2];
const title = process.argv[3];

if (existsSync(fileName)) {
  process.stdout.write("existing " + fileName + "\n");
  process.exit(0)
}

writeFileSync(fileName, title, "utf-8");


process.stdout.write("create new file\n");

const fileData = readFileSync(fileName);
process.stdout.write(fileData + "\n");
