function echoLoop() {
  const args = process.argv.slice(2);

  // 配列をカンマで結合して一度に出力
  process.stdout.write(args.join(",") + '\n');
}

if (process.argv.length >= 3) {
  echoLoop();
} else {
  process.stdout.write("please arg \n");
}


