import "dart:html";
C(num a){
 return ((9/5)*a+32); 
}
F(num a){
 return (a - 32)*5/9;
} 
int len;
var type;
var number;
InputElement tempInput = querySelector("#F");
LabelElement output = querySelector("#output");
void main() {
 querySelector("#submit").onClick.listen((e) =>  calcRabbits(tempInput.value));
}
calcRabbits(String string){
 len =  string.length;
 type = string[len-1];
 number = string.substring(0, len-1);
 number = int.parse(number);
if(type=="C"){
output.innerHtml ="攝氏$number度=華氏${C(number).toStringAsFixed(3)}度";
}
 else if(type=="F"){
  output.innerHtml ="華氏$number度=攝氏${F(number).toStringAsFixed(3)}度";
  }
 else {
  output.innerHtml ="請輸入數字加上 C 或 F!";
  }
}