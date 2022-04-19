import 'package:flutter/material.dart';
import 'package:todo_app/ui/home/setting/setting_tab.dart';
import 'package:todo_app/ui/home/task_list/add_task_sheet.dart';
import 'package:todo_app/ui/home/task_list/tasks_list_widght.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task Managment App",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "   "),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
            ShowtaskBottomSheet();
        },
        shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 4)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[currentIndex]  ,
    );
  }

  List<Widget> tabs = [TaskListTab(), SettingTab()];
  void ShowtaskBottomSheet(){
      showModalBottomSheet(context: context, builder: (buildeContext){
        return AddTaskBottomSheet();
      });
  }
}
