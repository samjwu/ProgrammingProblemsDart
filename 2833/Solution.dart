class Solution {
    int furthestDistanceFromOrigin(String moves) {
        var dist = 0;
        var unknown = 0;

        for (var i = 0; i < moves.length; i++) {
            if (moves[i] == 'L') {
                dist -= 1;
            } else if (moves[i] == 'R') {
                dist += 1;
            } else {
                unknown += 1;
            }
        }

        return dist.abs() + unknown;
    }
}
