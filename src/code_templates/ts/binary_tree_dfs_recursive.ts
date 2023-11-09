// Binary tree: DFS (recursive)
// @ts-ignore
let dfs = root => {
  if (!root) {
    return;
  }

  let ans = 0;

  // do logic
  dfs(root.left);
  dfs(root.right);
  return ans;
}