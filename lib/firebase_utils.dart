import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/model/task.dart';
CollectionReference<Task> getTasksCollection(){
  var typedCollection = FirebaseFirestore.instance
      .collection("tasks")
      .withConverter<Task>(
      fromFirestore: ((snapshot, options) =>Task.fromJason(snapshot.data()!) ),
      toFirestore: (task, options)=>task.toJeson());
  return typedCollection;
}

void addTaskToFirestore(Task task){
  var collection =getTasksCollection();
  var docRef =collection.doc();
  task.id = docRef.id;
  docRef.set(task);


//  FirebaseFirestore.instance
}