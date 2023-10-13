/* sets é como uma lista que não aceita repetição. Ver mais sobre TDD*/

import 'package:aula/rational.dart';

class RationalSet {
  final _set = <Rational>[];

  // TODO - a)
  @override
  String toString() => _set.toString().replaceFirst("[", "{").replaceFirst("]", "}");

  // TODO - b)
  bool constains(Rational r){
    for(var elem in _set){
      if(r == elem){
        return true;
      }
    }
    return false;
  }

  // TODO - c)
  void add(Rational r){
    if(!constains(r)){ 
    _set.add(r);
    _set.sort((e1,e2) => (e1.toDouble() - e2.toDouble()).sign.toInt());
    }
  }

  // TODO - d)
  void remove(Rational r) {
    _set.remove(r);
  }
}
