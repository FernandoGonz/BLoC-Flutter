import 'package:bloc_project/bloc/user/user_bloc.dart';
import 'package:bloc_project/pages/page1.dart';
import 'package:bloc_project/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: 'page1',
        routes: <String, WidgetBuilder> {
          'page1': (context) => const Page1(),
          'page2': (context) => const Page2(),
        },
      ),
    );
  }
}
