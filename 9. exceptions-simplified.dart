void main(List<String> args) {
  double divider = 0;
  double result;
  try {
    result = 12 / divider;
    print("The result is $result");
  } catch (e) {
    print("Can't divide by zero");
    print(e);
  }
}
