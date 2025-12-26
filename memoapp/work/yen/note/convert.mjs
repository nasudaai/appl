import fs from 'node:fs';

const content = fs.readFileSync("../todos.md", "utf-8");

const lines = content.split("\n");

const firstLine = lines[0];


console.log(firstLine);
