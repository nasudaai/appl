const arr = [1, 2, 3, 4];

const initialValue = 0;

//reduce
const sum = arr.reduce(
  (acc, cur) => acc + cur, initialValue
);

console.log(sum);


//map
const mapped = arr.map((x) => x * 2);

console.log(mapped);

//filter
const result = arr.filter((n) => n % 2 === 0);
console.log(result);

function main() {
  console.log("main");
}

main();
