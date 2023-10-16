class Solution {
    int minimumRightShifts(List<int> nums) {
        int n = nums.length;
        int maxNum = -1;
        int idxMax = -1;
        
        for (int i = 0; i < n; i++) {
            if (nums[i] > maxNum) {
                maxNum = nums[i];
                idxMax = i;
            }
        }
        
        int prev = -1;
        int idx = idxMax;
        
        for (int i = 0; i < n; i++) {
            idx = (idx + 1) % n;
            
            if (prev > nums[idx]) {
                return -1;
            }
            
            prev = nums[idx];
        }
        
        return n-1 - idxMax;
    }
}
