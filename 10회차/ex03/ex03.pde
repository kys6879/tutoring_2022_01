void setup() {
  int result = factorial(5);

  println(result);
}

int factorial(int n) {
  if(n == 1) {
    return 1;
  }
  return n * factorial(n-1);
}
