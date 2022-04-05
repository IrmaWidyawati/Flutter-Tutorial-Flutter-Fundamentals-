import 'package:bloc/bloc.dart';
import 'package:flutter_53_mvvm/model/user.dart';




class UserBloc extends Bloc<int, User> {
  UserBloc() : super(UninitializedUser());

  @override
  Stream<User> mapEventToState(int event) async* {
    User user;
    try {
      user = await User.getUserFromAPI(event);
      yield user;
    } catch (_) {}
  }
}