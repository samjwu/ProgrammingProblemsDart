class Solution {
    int minOperations(List<int> nums, int k) {
        Set<int> collect = {};
        
        for (int i = nums.length-1; i >= 0; i--) {
            if (nums[i] <= k) {
                collect.add(nums[i]);
            }
            
            if (collect.length == k) {
                return nums.length - i;
            }
        }
        
        return -1;
    }
}
