import 'construct.dart';

class ConstList {
  // String name;
  // int rollNo;

  listName(int tileNo) {
    return student[tileNo].name;
  }

  listRollNo(int tileNo) {
    return student[tileNo].rollNo;
  }

  List<Constructor> student = [
    Constructor("Naman1", 111),
    Constructor("Naman2", 222),
    Constructor("Naman3", 333),
    Constructor("Naman4", 444),
    Constructor("Naman5", 555)
  ];
}
