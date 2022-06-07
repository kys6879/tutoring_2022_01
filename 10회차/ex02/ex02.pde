

void setup() {
  int sum = recursion(5);

  println(sum);
}

int recursion(int n) {
  if(n == 1) {
    return 1;
  }
  return n + recursion(n-1);
}
