class Solution {
    String maximumOddBinaryNumber(String s) {
        int ones = 0;
        
        for (int i = 0; i < s.length; i++) {
            if (s[i] == '1') {
                ones += 1;
            }
        }
        
        int zeroes = s.length - ones;
        
        List<String> ans = [];
        
        for (int i = 0; i < ones-1; i++) {
            ans.add('1');
        }
        
        for (int i = 0; i < zeroes; i++) {
            ans.add('0');
        }
        
        ans.add('1');
        
        return ans.join('');
    }
}
