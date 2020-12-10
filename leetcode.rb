# You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank.
# Return the wealth that the richest customer has.
# A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

# Input: accounts = [[1,2,3],[3,2,1]]
# Expected Output: 6

def maximum_wealth(accounts)
  accounts.map {|account| account.sum}.max
end
# -----------------

# Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
# Return the running sum of nums.
#
# Input: nums = [1,2,3,4]
# Expected Output: [1,3,6,10]

def running_sum(nums)
  sum = 0
  nums.map{|num| sum+=num}
end
#------------------

# Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.
#
# For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number
# of candies among them. Notice that multiple kids can have the greatest number of candies.
#
# Input: candies = [2,3,5,1,3], extraCandies = 3
# Expected Output: [true,true,true,false,true]

def kids_with_candies(candies, extra_candies)
  max = candies.max
  candies.map do |c|
    if c < max && c + extra_candies >= max
        true
    elsif c == max
        true
    else
        false
    end
  end
end
#-----------------
