import 'package:mencobasqlite/repository/database_creator.dart';

class Todo {
  int id;
  String name;
  String info;
  bool isDeleted;

  Todo(this.id, this.name, this.info, this.isDeleted);

  Todo.fromJson(Map<String, dynamic> json) {
    this.id = json[DatabaseCreator.id];
    this.name = json[DatabaseCreator.name];
    this.isDeleted = json[DatabaseCreator.isDeleted] == 1;
  }
}