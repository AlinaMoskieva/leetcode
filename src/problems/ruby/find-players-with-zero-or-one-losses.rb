# https://leetcode.com/problems/find-players-with-zero-or-one-losses

# 2225. Find Players With Zero or One Losses
# Solved
# Medium

# Return a list answer of size 2 where:

# answer[0] is a list of all players that have not lost any matches.
# answer[1] is a list of all players that have lost exactly one match.
# The values in the two lists should be returned in increasing order.

# Note:

# You should only consider the players that have played at least one match.
# The testcases will be generated such that no two matches will have the same outcome.

# Example 1:

# Input: matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]
# Output: [[1,2,10],[4,5,7,8]]
# Explanation:
# Players 1, 2, and 10 have not lost any matches.
# Players 4, 5, 7, and 8 each have lost one match.
# Players 3, 6, and 9 each have lost two matches.
# Thus, answer[0] = [1,2,10] and answer[1] = [4,5,7,8].
# Example 2:

# Input: matches = [[2,3],[1,3],[5,4],[6,4]]
# Output: [[1,2,5,6],[]]
# Explanation:
# Players 1, 2, 5, and 6 have not lost any matches.
# Players 3 and 4 each have lost two matches.
# Thus, answer[0] = [1,2,5,6] and answer[1] = [].

# Constraints:

# 1 <= matches.length <= 105
# matches[i].length == 2
# 1 <= winneri, loseri <= 105
# winneri != loseri
# All matches[i] are unique.

# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners_1(matches)
  players_loss = {}

  matches.each do |winner, looser|
    players_loss[winner] = 0 if players_loss[winner].nil? || players_loss[winner] == 0

    players_loss[looser] ||= 0
    players_loss[looser] += 1
  end

  no_failures = []
  one_failure = []

  players_loss.keys.sort.each do |player|
    no_failures.push(player) if players_loss[player] == 0
    one_failure.push(player) if players_loss[player] == 1
  end

  [no_failures, one_failure]
end

def find_winners(matches)
  winners = matches.transpose[0]
  loosers = matches.transpose[1]

  [(winners - loosers).uniq.sort, loosers.tally.select { |_k, v| v == 1 }.keys.sort]
end
