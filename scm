// Smallest Common Multiple
// Find the smallest common multiple of the provided parameters that can be evenly divided by both, as well as by all sequential numbers in the range between these parameters.

function gcd(a, b) {     //  Defines a Function to find the GCD
  if (b === 0) return a;
  return gcd(b, a % b);   // Implements the Euclidean algorithm for GCD here
}

function lcm(a, b) {    // Defines a Function to find the LCM using the GCD
  return Math.abs(a * b) / gcd(a, b);
}

function smallestCommons(arr) {   // Find the SCM for the range
  arr.sort((a, b) => a - b);

  let range = [];
  for (let i = arr[0]; i <= arr[1]; i++) {
    range.push(i);
  }

  let currentLcm = range[0];
  for (let i = 1; i < range.length; i++) {    // Starts with the first number of the range as initial LCM
    currentLcm = lcm(currentLcm, range[i]);
  }

  return currentLcm;
}
