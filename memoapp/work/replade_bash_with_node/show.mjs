import { readFileSync } from 'node:fs';

const args = process.argv.slice(2);


// show
const file = args[0];

const data = readFileSync(file, "utf-8");
console.log(data);


// concatinate
args.forEach((file) => {
  
  const data = readFileSync(file, "utf-8");
  console.log(data);
});
