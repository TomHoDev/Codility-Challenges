function solution(X, Y, D) {
    if((Y-X) % D === 0){
        return (Y-X) / D;   
    }else{
        return Math.trunc((Y-X) / D) + 1;
    }
}