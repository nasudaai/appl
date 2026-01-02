import { readFileSync } from 'node:fs';

const file = process.argv[2];

const data = readFileSync(file);
process.stdout.write(data);
