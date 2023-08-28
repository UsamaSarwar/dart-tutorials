// Authentication System using if-else and variables

void main(List<String> args) {
  String username = "admin";
  String password = "12832";

  if (username == "admin" && password == "12345") {
    print("Login Successful");
  } else {
    print("Login Failed!\nTry again later...");
  }
}