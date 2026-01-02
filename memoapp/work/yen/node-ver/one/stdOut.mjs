function echoLoop() {
  const args = process.argv.slice(2);

  for (let i = 0; i < args.length; i++) {

    const elem = args[i] + ",";
  
    process.stdout.write(elem);


    if (i === args.length - 1) {
    
      process.stdout.write('\n');
    }
  }
}

if (process.argv.length >= 3) {
  echoLoop();
} else {
  process.stdout.write("please arg \n");
}
