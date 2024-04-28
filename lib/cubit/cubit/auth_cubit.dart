
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_task/cubit/cubit/auth_state.dart';
import 'package:login_task/data/service/login_service.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._loginService) : super(AuthInitial());

  final LoginService _loginService;

  final controllers = {
    'email': TextEditingController(),
    'password' : TextEditingController(),

  };

  void login() async {
    try{
      emit(AuthLoading());
     final result = await _loginService.login(controllers['email']!.text, controllers['password']!.text);
      emit(AuthSuccses(result));

    } on SocketException catch (e){
      emit(AuthNetworkFail());
    }
    catch (e) {
     emit(AuthError());
    }

  }
  @override
  Future<void> close() {
  controllers.values.forEach((element) {
    element.dispose();
   });
    return super.close();
  }

}
