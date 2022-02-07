part of 'user_bloc.dart';

class UserState {

  final bool existUser;
  final User? user;

  UserState({
    User? user,
  })  : this.user = user ?? null,
        this.existUser = (user != null) ? true : false;

}
