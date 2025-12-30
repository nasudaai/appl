import { appendFileSync } from 'node:fs';

const arr = process.argv.slice(2);

console.log(arr);


const line = arr.join(" ") + "\n";
process.stdout.write(line);

/*
for (const data of arr) {

  const dataAndSpace = data + " ";
  process.stdout.write(dataAndSpace);
}
*/

appendFileSync("out/out.txt", line, "utf-8");
