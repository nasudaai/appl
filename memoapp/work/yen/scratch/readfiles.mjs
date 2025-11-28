import {readFileSync} from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const filePath = join(__dirname, "txt.md")


const txt = readFileSync(filePath,"utf-8");

console.log(txt)
