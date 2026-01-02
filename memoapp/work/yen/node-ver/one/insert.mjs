import { appendFileSync } from 'node:fs';


const args = process.argv.slice(2);

for (const argv of args) {

  const data = argv + " ";

  process.stdout.write(data);
}

process.stdout.write("\n");
