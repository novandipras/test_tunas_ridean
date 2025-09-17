import 'dart:math';

void main() {
  int n = Random().nextInt(10) + 1;
  int m = Random().nextInt(10) + 1;

  print(n);
  print(m);

  List<List<int>> x = [];

  for (int i = 0; i < n; i++) {
    int a = Random().nextInt(1000) + 1;
    int b = Random().nextInt(1000) + 1;
    x.add([a, b]);
  }

  x.sort((a, b) => a.first.compareTo(b.first));

  int o = x.fold(m, (prev, next) {
    if (next[0] < prev) {
      return prev;
    } else {
      return prev + next[1];
    }
  });

  print(x);
  print(o);
}
