KtoL(num k){
return k*2.20462262;
}

LtoK(num l){
return l*0.45359237;
}

main() {
  int len;
  var type;
  var number;
  List temp = ["25kg", "30lb", "56lb", "14kg", "68lb", "198kg"];
  for (var data in temp) {
    len = data.length;
    type = data[len-2];
    number = data.substring(0, len-2);
    number = int.parse(number);
    if (type == "KG"){
      print("$number kg =${KtoL(number)} lb");
    }else{
      print("$number lb =${LtoK(number)} kg");
    }
      
  } // for
} // main
