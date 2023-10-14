class Solution {
    int countSymmetricIntegers(int low, int high) {
        var ans = 0;
        
        for (var i = low; i <= high; i++) {
            if (isSym(i)) {
                ans += 1;
            }
        }
        
        return ans;
    }
    
    bool isSym(int num) {
        String str = num.toString();
        
        int n = str.length;
        
        if (n % 2 == 1) {
            return false;
        }
        
        int first = 0;
        int last = 0;
        
        for (int i = 0; i < n/2; i++) {
            first += int.parse(str[i]);
        }
        
        for (int i = (n/2).toInt(); i < n; i++) {
            last += int.parse(str[i]);
        }
        
        return first == last;
    }
}
