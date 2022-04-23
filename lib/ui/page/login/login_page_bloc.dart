import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_generic_api_response/extensions/safe_call_extensions.dart';
import 'package:flutter_generic_api_response/network/base/api_result.dart';
import 'package:flutter_generic_api_response/network/services/user_services/model/login_request.dart';
import 'package:flutter_generic_api_response/network/services/user_services/model/login_response.dart';
import 'package:flutter_generic_api_response/network/services/user_services/user_services.dart';

abstract class LoginPageEvent {}

class LoginPageState {
  final bool isLoading;
  final String? status;

  LoginPageState({this.isLoading = false, this.status});
}

class LoginPageLoginAttempted extends LoginPageEvent {
  final String username;
  final String password;

  LoginPageLoginAttempted(this.username, this.password);
}

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final UserServices userServices;

  LoginPageBloc(this.userServices) : super(LoginPageState()) {
    on<LoginPageLoginAttempted>((event, emit) async {
      emit(LoginPageState(isLoading: true));
      final result = await userServices.login(
          LoginRequest(username: event.username, password: event.password));

      if (result is Success<LoginResponse>) {
        emit(LoginPageState(
            isLoading: false, status: "Welcome ${result.data.user.name}"));
      } else {
        final errorMessage =
            result.asOrNull<Failed>()?.errors.firstOrNull()?.message ??
                "Something went wrong";
        emit(LoginPageState(isLoading: false, status: errorMessage));
      }
    });
  }
}
