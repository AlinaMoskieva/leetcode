// Dynamic programming: top-down memoization

let BASE_CASE: string;
let RECURRENCE_RELATION: (arg0: any) => any;
let STATE_FOR_WHOLE_INPUT: any;
let ARRAY_SIZED_ACCORDING_TO_STATE: any;

// @ts-ignore
let fn = (arr) => {
  // @ts-ignore
  let dp = (STATE) => {
    if (BASE_CASE) {
      return 0;
    }

    if (memo[STATE] != -1) {
      return memo[STATE];
    }

    let ans = RECURRENCE_RELATION(STATE);
    memo[STATE] = ans;
    return ans;
  };

  let memo = ARRAY_SIZED_ACCORDING_TO_STATE;
  return dp(STATE_FOR_WHOLE_INPUT);
};
