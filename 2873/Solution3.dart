class Solution {
    int maximumTripletValue(List<int> nums) {
        int n = nums.length;
        int ans = 0;

        int maxI = nums[0];
        int maxIMinusJ = nums[0] - nums[1];
        
        for (int k = 2; k < n; k++) {
            ans = max(ans, maxIMinusJ * nums[k]);
            maxI = max(maxI, nums[k-1]);
            maxIMinusJ = max(maxIMinusJ, maxI - nums[k]);
        }
        
        return ans;
    }
}
