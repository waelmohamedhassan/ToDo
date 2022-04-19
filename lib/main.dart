import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/ui/home/home-screen.dart';
import 'package:todo_app/ui/my_theme/my_theme.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyAppliaction());
}
class MyAppliaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName : (buildContext)=>HomeScreen()
      },
      initialRoute: HomeScreen.routeName    ,
      theme: MyThemeData.lightTheme ,




    );
  }
}


