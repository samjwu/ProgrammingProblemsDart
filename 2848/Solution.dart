class Solution {
    int numberOfPoints(List<List<int>> nums) {
        Set<int> seenPoints = {};
        
        int ans = 0;
        
        for (List<int> car in nums) {
            for (int i = car[0]; i <= car[1]; i++) {
                if (seenPoints.contains(i) == false) {
                    seenPoints.add(i);
                    ans += 1;
                }
            }
        }
        
        return ans;
    }
}
