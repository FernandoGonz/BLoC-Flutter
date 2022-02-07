part of 'user_bloc.dart';

abstract class UserEvent {}

class SetUser extends UserEvent {
  final User user;
  SetUser({required this.user});
}

class SetAge extends UserEvent {
  final int age;
  SetAge({required this.age});
}