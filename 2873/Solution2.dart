class Solution {
    int maximumTripletValue(List<int> nums) {
        int n = nums.length;
        int ans = 0;

        List<int> maxK = List.filled(n, 0);
        maxK[n-1] = nums[n-1];
        for (int i = n-2; i >= 0; i--) {
            maxK[i] = max(maxK[i+1], nums[i]);
        }
        
        for (int i = 0; i < n-2; i++) {
            for (int j = i+1; j < n-1; j++) {
                ans = max(ans, (nums[i] - nums[j]) * maxK[j+1]);
            }
        }
        
        return ans;
    }
}
