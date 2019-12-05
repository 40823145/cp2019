import "dart:html";
void main() {
  querySelector("#submit").onClick.listen((e) => calcRabbits());
}
calcRabbits() {
  // binding variables to html elements:
  InputElement cInput = querySelector("#c");
  LabelElement output = querySelector("#output");
  // getting input
  String cString = cInput.value;
  int c = int.parse(cString);
  // calculating and setting output:
  output.innerHtml = "${calculateRabbits(c)}";
}
int calculateRabbits(int c) {
   return ((9/5)*c+32)
      .round()
      .toInt();
}