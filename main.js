const arr = [1, 2, 3, 4];

const initialValue = 0;


const sum = arr.reduce(
  (acc, cur) => acc + cur, initialValue
);

console.log(sum);
