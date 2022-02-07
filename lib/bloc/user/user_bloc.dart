import 'package:bloc/bloc.dart';
import 'package:bloc_project/models/user.dart';

part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState()) {
    on<SetUser>(
      (event, emit) {
        return emit(UserState(user: event.user));
      },
    );
    on<SetAge>((event, emit) {
      return emit(UserState(user: state.user!.copyWith(age: event.age)));
    });
  }
}
