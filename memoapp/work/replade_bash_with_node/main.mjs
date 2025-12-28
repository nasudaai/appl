import { writeFileSync } from 'node:fs';


const args = process.argv.slice(2);

const string = args[0];
const fileName = args[1];


//console.log(string, fileName);

writeFileSync(fileName, string + "\n", "utf-8");
