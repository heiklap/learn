



///  from  Gitter
///  Anyone know of a library for command-line tabular data printing?
///  I wrote a little class, but I wonder if someone has written something nicer.
class TableLayout {
  List<int> columnWidths;

  TableLayout(this.columnWidths);

  void printRow(List<String> cells) {
    assert(cells.length == columnWidths.length);
    List<String> paddedCells = [];
    for (int i = 0; i < cells.length; i += 1) {
      paddedCells.add(cells[i].padRight(columnWidths[i]));
    }
    print(paddedCells.join(' '));
  }

  void printDivider() {
    int width = columnWidths.reduce((a, b) => a + b) + columnWidths.length - 1;
    print('=' * width);
  }
}


///TODO  stdOut  name not
//  if you do publish it...
class TableLayout2 {
  TableLayout2({StringSink sink}) {
    this.sink ??= stdout;
  }

  StringSink sink;

  void print(String s) {
    sink.writeln(s);
  }
}
//  Makes writing cli tests easier, can sub in a StringBuffer

//

