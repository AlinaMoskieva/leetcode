// https://leetcode.com/problems/climbing-stairs/description/
// Climbing Stairs

// You are climbing a staircase. It takes n steps to reach the top.

// Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

// Example 1:

// Input: n = 2
// Output: 2
// Explanation: There are two ways to climb to the top.
// 1. 1 step + 1 step
// 2. 2 steps
// Example 2:

// Input: n = 3
// Output: 3
// Explanation: There are three ways to climb to the top.
// 1. 1 step + 1 step + 1 step
// 2. 1 step + 2 steps
// 3. 2 steps + 1 step

function makeStep(
  stepsNumber: number,
  stepFrom: number,
  counter: Record<number, number>,
  desctination: number,
  activeRoutes: number[]
): number {
  let waysNumber = 0;
  const currentPoint = stepFrom + stepsNumber;

  if (currentPoint === desctination) {
    waysNumber += counter[stepFrom] ? counter[stepFrom] : 1;
  }

  if (currentPoint < desctination) {
    if (!counter[currentPoint]) activeRoutes.push(currentPoint);
    counter[currentPoint] += isNaN(counter[stepFrom]) ? 1 : counter[stepFrom];
  }

  return waysNumber;
}

function climbStairs1(n: number): number {
  let waysNumber = 0;
  const activeRoutes: number[] = [0];
  const counter: Record<number, number> = {};

  while (activeRoutes.length) {
    const stepFrom = activeRoutes.shift();

    waysNumber += makeStep(1, stepFrom, counter, n, activeRoutes);
    waysNumber += makeStep(2, stepFrom, counter, n, activeRoutes);
  }

  return waysNumber;
}

// Complixity: T: O(n), S: O(1)
function climbStairs(n: number): number {
  if (n === 1) return 1;

  let twoBefore = 1;
  let oneBefore = 2;

  for (let i = 3; i <= n; i++) {
    const tmp = oneBefore;

    oneBefore = oneBefore + twoBefore;
    twoBefore = tmp;
  }

  return oneBefore;
}

climbStairs1(3);
climbStairs(3);
