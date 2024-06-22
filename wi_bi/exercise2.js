// Change count to myCount.
// Change numbers to myNumbers.
// Change sum to totalSum.
// Change array to numberArray.

let count = 10;

function incrementCount(value) {
    return count + value;
}

console.log("Current count:", count);

count = incrementCount(5);

console.log("Updated count:", count);

let numbers = [1, 2, 3, 4, 5];

function sumArray(array) {
    let sum = 0;
    for (let i = 0; i < array.length; i++) {
        sum += array[i];
    }
    return sum;
}

console.log("Sum of numbers:", sumArray(numbers));
