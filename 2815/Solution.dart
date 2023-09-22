class Solution {
    int maxSum(List<int> nums) {
        var ans = -1;
        
        for (var i = 0; i < nums.length-1; i++) {
            for (var j = i+1; j < nums.length; j++) {
                if (haveSameMaxDigit(nums[i], nums[j])) {
                    ans = max(ans, nums[i] + nums[j]);
                }
            }
        }
        
        return ans;
    }
    
    bool haveSameMaxDigit(int a, int b) {
        int maxA = 0;
        int maxB = 0;
        
        while (a > 0) {
            maxA = max(maxA, a % 10);
            a = a ~/ 10;
        }
        
        while (b > 0) {
            maxB = max(maxB, b % 10);
            b = b ~/ 10;
        }
        
        return maxA == maxB;
    }
}
