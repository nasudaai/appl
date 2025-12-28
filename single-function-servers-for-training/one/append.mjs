import { appendFileSync, readFileSync } from 'node:fs';

const data = "data";


appendFileSync("out.txt", data + "\n", "utf-8");


const fileData = readFileSync("out.txt", "utf-8");
console.log(fileData);
