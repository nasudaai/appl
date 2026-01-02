import { readFileSync } from 'node:fs';

const data = readFileSync("out/out.txt", "utf-8");
process.stdout.write(data + "\n");
