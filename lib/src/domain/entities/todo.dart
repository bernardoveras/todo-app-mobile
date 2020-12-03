import 'package:todo_app/src/common/extensions/date_time_extension.dart';

class Todo {
  String id;
  String title;
  bool done;
  bool important;
  DateTime date;
  Todo({this.id, this.title, this.done, this.important});

  Todo.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    done = json["done"];
    important = json["important"];
    date = DateTime.parse(json["date"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["title"] = this.title;
    data["done"] = this.done;
    data["important"] = this.important;
    data["date"] = this.date.formatar("EEEE, dd/MM/yyyy");
  }
}
