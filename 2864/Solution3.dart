class Solution {
    String maximumOddBinaryNumber(String s) {
        List<String> chars = s.split('');
        
        chars.sort();
        chars.removeLast();
        
        return List.from(chars.reversed).join() + "1";
    }
}
