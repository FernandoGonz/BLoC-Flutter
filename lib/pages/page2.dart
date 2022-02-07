import 'package:bloc_project/bloc/user/user_bloc.dart';
import 'package:bloc_project/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: const Text('Establecer Usuario',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                User user = User(
                  name: 'Fernando Linares',
                  age: 28,
                  profession: ['Swift'],
                );

                BlocProvider.of<UserBloc>(context).add(SetUser(user: user));
              }),
          MaterialButton(
              child: const Text('Cambiar Edad',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                BlocProvider.of<UserBloc>(context).add(
                  SetAge(age: 19),
                );
              }),
          MaterialButton(
              child: const Text('Añadir Profesion',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {}),
        ],
      )),
    );
  }
}
