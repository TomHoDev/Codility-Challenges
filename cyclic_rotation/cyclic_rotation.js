function solution(A, K) {
    if(A.length === 0){
        return A    
    }else{
        while(K > 0){
            var old_last = A.splice(A.length-1, 1)[0]
            A.unshift(old_last)
            K--    
        }
        return A   
    }
}