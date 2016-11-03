function solution(N) {
  var arr = N.toString(2).split("");
  var length = 0;
  var maxLength = 0;
  for(var i = 0; i < arr.length; i++){
    if(arr[i] === "1"){
      if(length > maxLength){
        maxLength = length;
      }
      length = 0;
    }else{
      length += 1;
    }
  }
  return maxlength;
}