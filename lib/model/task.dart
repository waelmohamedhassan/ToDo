
class Task{
String id;
String title;
String description;
int date;
bool isDone;
Task({this.id=" ",
  required this.title,
  required this.description,
  required this.date,
  this.isDone=false});
Map <String,dynamic> toJeson(){
  return{
  "id": id,
  "title": title,
  "description": description,
  "date": date,
  "isDone": isDone,
  };
}
Task.fromJason(Map<String,dynamic>json):
    this(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: json['date'] as int,
      isDone: json['isDone'] as bool,
    );



}