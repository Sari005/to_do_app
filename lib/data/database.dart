import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList = [];
  //reference our box
 final _myBox = Hive.box('mybox');

 //run this method if first time ever opening this app
 void createInitialData() {
  toDoList = [
    ['Make An App', false],
    ['Do Exercise', false]
  ];
 }
 //load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');

  }

 //uptade the database
   void uptadDataBase() {
     _myBox.put('TODOLIST', toDoList);
    
  }


}

