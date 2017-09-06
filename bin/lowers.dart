

// via slack Gunther

List<int> getNearestLower(int target, List<int> baseList) {
  final lowers = baseList.where((val) => val < target);
  return lowers.isEmpty ? null : lowers.last;
}

///  hkl  put this inside a function
///
void doStuff(List list, List baseList) {
  list.map((val) => getNearestLower(val, baseList)).toList();

}


