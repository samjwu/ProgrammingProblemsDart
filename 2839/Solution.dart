class Solution {
    bool canBeEqual(String s1, String s2) {
        List<String> t1 = s1.split('');

        for (int i = 0; i < 2; i++) {
            if (t1[i] != s2[i]) {
                var temp = t1[i];
                t1[i] = t1[i + 2];
                t1[i + 2] = temp;
            }
        }

        return t1.join('') == s2;
    }
}
