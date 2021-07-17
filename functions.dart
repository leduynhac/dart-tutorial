int add(int a, int b) {
  return a + b;
}

void main(List<String> args) {
  //Functions are objects and have a type: Function.
  assert(add is Function); //is: instanceof

  //Functions can be assigned to variables.
    Function sum = add;
    assert(sum(1, 2) == 3);

  //Functions can be passed as arguments to other functions.
}
