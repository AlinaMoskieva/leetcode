// Two pointers: one input, opposite ends

let CONDITION = true;

// @ts-ignore
let fn = arr => {
  let left = 0, ans = 0, right = arr.length - 1;

  while (left < right) {
    // do some logic here with left and right
    if (CONDITION) {
      left++;
    } else {
      right--;
    }
  }

  return ans;
}