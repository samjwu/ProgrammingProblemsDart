class Solution {
    bool isAcronym(List<String> words, String s) {
        String acronym = "";
        
        for (String word in words) {
            acronym += word[0];
        }
        
        return acronym.compareTo(s) == 0;
    }
}
