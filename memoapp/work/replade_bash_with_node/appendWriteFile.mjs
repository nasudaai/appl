import { appendFileSync } from 'node:fs';

const args = process.argv.slice(2);

const line = args[0];
const file = args[1];

appendFileSync(file, line + "\n", "utf-8");
