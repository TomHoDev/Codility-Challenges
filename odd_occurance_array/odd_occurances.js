function solution(A) {
    if(A.length === 1){
        return A[0];
    };
    A.sort(function(a,b){
        return a -b ;
    });
    
    for(var i = 0; i < A.length-1; i += 2){
     if(A[i] != A[i+1]){
        return A[i];
     }
    }; 
    
    return A[A.length-1]
}