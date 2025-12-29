import { readFileSync } from 'node:fs';

function show(file) {

  process.stdout.write(readFileSync(file));
}


function concat(files) {
  
  for (const file of files) {

    process.stdout.write(readFileSync(file));
  }
}


const argc = process.argv.length -2;
if (argc === 1) {
  
  const file = process.argv[2]
  show(file);
} else if (argc >= 2) {

  const files = process.argv.slice(2)
  concat(files);
} else {
  process.stdout.write("please args\n");
}
