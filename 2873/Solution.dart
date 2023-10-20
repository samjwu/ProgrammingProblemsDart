class Solution {
    int maximumTripletValue(List<int> nums) {
        int n = nums.length;
        int ans = 0;
        
        for (int i = 0; i < n-2; i++) {
            for (int j = i+1; j < n-1; j++) {
                for (int k = j+1; k < n; k++) {
                    ans = max(ans, (nums[i] - nums[j]) * nums[k]);
                }
            }
        }
        
        return ans;
    }
}
