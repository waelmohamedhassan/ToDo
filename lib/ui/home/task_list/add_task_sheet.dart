import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';

import '../../../firebase_utils.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  GlobalKey<FormState>formControl= GlobalKey<FormState>();

  String title="";
  String description= "";
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Form(
            key: formControl,
            child: Column(
              children: [
                TextFormField(
                  onChanged:(text){
                    title=text;
                  },
                  decoration: InputDecoration(
                    labelText: "Title"
                  ),
                  validator: (text){
                    if(text==null||text.isEmpty){
                      return "please enter title" ;
                    }
                    return null;
                  },

                ),
                TextFormField(
                    onChanged:(text){
                      description=text;
                    },
                  validator: (text){
                    if(text==null||text.isEmpty){
                      return "please enter description" ;
                    }
                    return null;
                  },
                  minLines: 4,
                    maxLines: 4,
                    decoration: InputDecoration(
                        labelText: "Desciption"
                    )
                ),
                SizedBox(height:12),
                Text("Task Date"),
                SizedBox(height:8),
                InkWell(
                     onTap: (){
                       chooseDate();
                     },
                    child: Text(
                        "${selectDate.year}-${selectDate.month}-${selectDate.day}"
                ),
                ),
                SizedBox(height:12),
              ],
            ),
          ),
          ElevatedButton(onPressed: (){
            addTask();
          }, child: Text("Add Task"))
        ],
      ),
    );

  }

  void addTask(){
  if(formControl.currentState?.validate()==true){
  Task task = Task(title: title,
      description: description,
        date: selectDate.microsecondsSinceEpoch);
  addTaskToFirestore(task);

  }

  }

 void chooseDate()async {
    var choseDate = await showDatePicker(
        context: context,
        initialDate: selectDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
      if (choseDate!=null){
        selectDate=choseDate;
        setState(() {
        });
      }

  }
}
