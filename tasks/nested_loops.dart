// Example of nested loops.

// Tip: For one iteration of the outer loop, the inner loop will run to completion.

void main() {
  for (int i = 0; i < 5; i++) {
    print('i=$i');
    for (int j = 0; j < 2; j++) {
      print('j=$j');
    }
  }
}

// Output:
// i=0
// j=0
// j=1
// i=1
// j=0
// j=1
// i=2
// j=0
// j=1
// i=3
// j=0
// j=1
// i=4
// j=0
// j=1
