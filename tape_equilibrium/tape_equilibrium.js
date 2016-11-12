function solution(A) {
    var left_sum = A.shift();
    var right_sum = A.reduce(function(a,b) {
        return a+b    
    });
    var min_diff = Math.abs(left_sum - right_sum);
    for(var i = 0; i < A.length; i++) {
        var current_diff = Math.abs(left_sum - right_sum);
        if(current_diff < min_diff) {
            min_diff = current_diff    
        };
        left_sum += A[i];
        right_sum -= A[i];
    }
    return min_diff
}