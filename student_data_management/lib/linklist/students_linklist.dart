import 'dart:collection';

class Student extends LinkedListEntry<Student> {
  final String name;
  final String branch;
  final String email;
  final String mobile;

  final String prnnumber;
  Student(this.name, this.branch, this.email, this.mobile, this.prnnumber);

  @override
  String toString() {
    return 'name : $name\n course : $branch\n mobile : $mobile\n email : $email\nprnnumber : $prnnumber';
  }
}
  var linkedList = LinkedList<Student>();

class Data {
   adddata(name, branch, email, mobile, prnnumber) {
    linkedList.add(Student(name, branch, email, mobile, prnnumber));
    print("Added");
  }
  deletdata(index) {
    linkedList.elementAt(index).unlink();

    print("Added");
  }
      getdata(){return linkedList;}


}
