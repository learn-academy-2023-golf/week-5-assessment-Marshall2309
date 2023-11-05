// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe("string", () => {
  it("takes in a string and returns a string with a coded message", () => {
      expect(string(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
      expect(string(secretCodeWord2)).toEqual("G0bbl3dyg00k")
      expect(string(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
  })


const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.

const string = (str) => {
    const array = []
    str.split("").map(letter => {
        if (letter === "a"){
        array.push(4)
     } else if (letter === "e" ||letter === "E"){
        array.push(3)
     } else if (letter === "i"){
        array.push(1)
     } else if (letter === "o"){
        array.push(0)
     } else {
        array.push(letter)
     }

    })
    
    return array.join("")
}

//  "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// Pseudo code:
// I tested using the describe thing with expect statements.
// In my function, I defined the string and used str as an argument.
// I used the .split to split the array and the .map to iterate through every element.
// If statements were used to target the letters individually and array.push was used to push in the specified number in the place of whatever letter was targeted.
// array.join was used to push everything back into a string.


// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe('isFullHouse', () => {
    it('should return true for a full house hand', () => {
        const hand1 = [5, 5, 5, 3, 3];
        const hand4 = [7, 2, 7, 2, 7];

        expect(isFullHouse(hand1)).to.be.true;
        expect(isFullHouse(hand4)).to.be.true;
    });

    it('should return false for a non-full house hand', () => {
        const hand2 = [5, 5, 3, 3, 4];
        const hand3 = [5, 5, 5, 5, 4];

        expect(isFullHouse(hand2)).to.be.false;
        expect(isFullHouse(hand3)).to.be.false;
    });

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

console.log(isFullHouse(hand1)); 
console.log(isFullHouse(hand2)); 
console.log(isFullHouse(hand3)); 
console.log(isFullHouse(hand4));

// b) Create the function that makes the test pass.

function isFullHouse(hand) {
    const counts = {};
    for (const num of hand) {
        counts[num] = counts[num] ? counts[num] + 1 : 1;
    }
    const values = Object.values(counts);
    return (values.includes(2) && values.includes(3));
}

// Pseudo code:
// Inside the describe block and we have two it statements. One for testing a full house hand and one for testing a non-full house hand.
// Within the it block the test cases are defined using expect statements.
// In the first it block, we expect isFullHouse(hand1) to be true and isFullHouse(hand4) to be true.
// In the second it block, we expect isFullHouse(hand2) to be false and isFullHouse(hand3) to be false.
// The isFullHouse function takes an array hand as input.
// Inside the function, it initializes an empty object counts to keep track of the count of each number in the array.
// It then iterates through the hand array and updates the counts in the counts object.
// Next, it extracts the values (counts) from the counts object and checks if there is a count of 2 and a count of 3, which would indicate a full house.
// If both conditions are met, the function returns true, otherwise it returns false.
