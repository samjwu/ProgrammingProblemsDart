class Solution {
    String maximumOddBinaryNumber(String s) {
        int ones = 0;
        
        for (int i = 0; i < s.length; i++) {
            if (s[i] == '1') {
                ones += 1;
            }
        }
        
        int zeroes = s.length - ones;
        
        return '1' * (ones - 1) + '0' * (zeroes) + '1';
    }
}
