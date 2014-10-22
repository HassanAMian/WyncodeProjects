// FizzBuzz for JavaScript
// Created by Hassan Mian

// Objective: 
// This creates a list of numbers from 1 to 1000.
// For multiples of three return “Fizz”, and for the multiples of five return “Buzz”. 
// For numbers which are multiples of both three and five return “FizzBuzz”.
// Otherwise, return the number.

for (var i = 1; i <= 1000; i++) {
    if (i % 15 === 0) {
        console.log('FizzBuzz');
    } else if (i % 3 === 0) {
        console.log('Fizz');
    } else if (i % 5 === 0) {
        console.log('Buzz');
    } else {
        console.log(i);
    }
};
