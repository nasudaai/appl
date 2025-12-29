import { appendFileSync } from 'node:fs';


const args = process.argv.slice(2);

for (const argv of args) {

  process.stdout.write(argv);
}
