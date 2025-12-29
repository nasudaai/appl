import { appendFileSync, readFileSync } from 'node:fs';

const args = process.argv
console.log(args)

const cmdVar = args[2];
console.log("append: " + cmdVar);

//const data = "data";


appendFileSync("out.txt", cmdVar + "\n", "utf-8");


const fileData = readFileSync("out.txt", "utf-8");
console.log(fileData);
