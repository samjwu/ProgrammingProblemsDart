class Solution {
    int sumIndicesWithKSetBits(List<int> nums, int k) {
        int ans = 0;
        int n = nums.length;
        
        for (int i = 0; i < n; i++) {
            if (hasKBits(i, k)) {
                ans += nums[i];
            }
        }
        
        return ans;
    }
    
    bool hasKBits(int number, int k) {
        int bits = 0;
        
        while (number > 0) {
            if (number % 2 == 1) {
                bits += 1;
            }
            number >>= 1;
        }
        
        return bits == k;
    }
}
