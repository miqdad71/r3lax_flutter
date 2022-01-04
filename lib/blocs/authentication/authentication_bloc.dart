import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../configs/config.dart';
import '../../models/model.dart';
import '../../repository/repository.dart';
import 'bloc.dart';

class AuthBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final userRepository = UserRepository();
  final application = Application();

  AuthBloc() : super(InitialAuthenticationState()) {
    on<AuthenticationCheck>((event, emit) async {
      //Get User Storage
      UserModel? user = await userRepository.getUser();
      if (user != null) {
        ///Set user network
        await application.setUser(user);

        ///Valid & refresh User Info
        // user = await userRepository.validateToken();

        ///Fetch api success
        if (user != null) {
          ///Save to Storage user
          await userRepository.saveUser(user: user);

          ///Notify loading to UI
          emit(AuthenticationSuccess());
        }
      } else {
        ///Notify loading to UI
        emit(AuthenticationFail());
      }
    });

    on<AuthenticationSave>((event, emit) async {
      ///Save to Storage user
      await userRepository.saveUser(user: event.user);

      ///Notify loading to UI
      emit(AuthenticationSuccess());
    });

    on<OnClear>((event, emit) async {
      ///Save to Storage user
      await userRepository.deleteUser();

      ///Notify loading to UI
      emit(AuthenticationFail());
    });
  }

  @override
  Stream<AuthenticationState> mapEventToState(event) async* {
    if (event is AuthenticationCheck) {
      ///Get User Storage
      UserModel? user = await userRepository.getUser();

      if (user != null) {
        ///Set user network
        await application.setUser(user);

        ///Valid & refresh User Info
        // user = await userRepository.validateToken();

        ///Fetch api success
        if (user != null) {
          ///Save to Storage user
          await userRepository.saveUser(user: user);

          ///Notify loading to UI
          yield AuthenticationSuccess();
        }
      } else {
        ///Notify loading to UI
        yield AuthenticationFail();
      }
    }

    if (event is AuthenticationSave) {
      ///Save to Storage user
      await userRepository.saveUser(user: event.user);

      ///Notify loading to UI
      yield AuthenticationSuccess();
    }

    if (event is OnClear) {
      ///Save to Storage user
      await userRepository.deleteUser();

      ///Notify loading to UI
      yield AuthenticationFail();
    }
  }
}
