import 'package:bloc_project/bloc/user/user_bloc.dart';
import 'package:bloc_project/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) {
          if (state.existUser) {
            return InformacionUsuario(user: state.user!,);
          } else {
            return const Center(
              child: Text('Ho hay un usuario'),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () => Navigator.pushNamed(context, 'page2')),
    );
  }
}

class InformacionUsuario extends StatelessWidget {

  InformacionUsuario({
    required this.user,
  });

  User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('Edad: ${user.age} ')),
          const Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          const ListTile(title: Text('Profesion 1')),
          const ListTile(title: Text('Profesion 1')),
          const ListTile(title: Text('Profesion 1')),
        ],
      ),
    );
  }
}
