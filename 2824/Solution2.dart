class Solution {
    int countPairs(List<int> nums, int target) {
        int ans = 0;
        int n = nums.length;
        
        int l = 0;
        int r = n-1;
        
        nums.sort();
        
        while (l < r) {
            if (nums[l] + nums[r] < target) {
                ans += r - l;
                l += 1;
            } else {
                r -= 1;
            }
        }
        
        return ans;
    }
}
