/* 

  Generic<E>

  declarando classe genérica:

  class Cache<T> {
    T getByKey(String Key);
    void setByKey(String key, T value);
  }

  using functions:

  T first<T>(List<T> ts) {
    T tmp = ts[0]
    return tmp
  }

  qando aparecer um (new) se trata de um construtor.

  dica:

  var 1 = [1, 2, 3, 3, 2]
  var s = Set<int>.from(1) // {1, 2, 3}


  Typedefs - Funciona como o "as" do import só que para tipos, agora.

  ex:

  typedef IntList = List<int>;
  IntList il = [1, 2, 3];

  typedef Compare<T> = int Function(T a, T b);

  int sort(int a, int b) => a - b;

  void main () {
    assert(sort is Compare<int>); // true!
  }

 */

void main() {}
